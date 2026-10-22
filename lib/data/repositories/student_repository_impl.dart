import 'package:student_program/data/datasources/app_database.dart';
import 'package:student_program/domain/entities/local_lookup_entities.dart';
import 'package:student_program/domain/entities/rowcase_entity.dart';
import 'package:student_program/domain/entities/school_entity.dart';
import 'package:student_program/domain/entities/student_certificate_entity.dart';
import 'package:student_program/domain/entities/student_name_entity.dart';
import 'package:student_program/domain/entities/student_score_entity.dart';
import 'package:student_program/domain/repositories/student_repository.dart';
import 'package:supabase/supabase.dart';

class StudentRepositoryImpl implements StudentRepository {
  final AppDatabase localDatabase;
  final SupabaseClient supabase;

  StudentRepositoryImpl({required this.localDatabase, required this.supabase});

  // Helper method to normalize Arabic characters for client-side search fallback
  String _normalizeArabic(String text) {
    return text
        .trim()
        .replaceAll(RegExp(r'[أإآ]'), 'ا')
        .replaceAll('ى', 'ي')
        .replaceAll('ة', 'ه');
  }

  // ===========================================================================
  // 1. LOCAL DRIFT LOOKUP METHODS (OFFLINE)
  // ===========================================================================

  @override
  Future<List<SanaEntity>> getLocalYears() async {
    final rows = await localDatabase.select(localDatabase.sanasTable).get();
    return rows.map((r) => SanaEntity.fromDrift(r)).toList();
  }

  @override
  Future<List<EdaraEntity>> getLocalEdaras() async {
    final rows = await localDatabase.select(localDatabase.edarasTable).get();
    return rows.map((r) => EdaraEntity.fromDrift(r)).toList();
  }

  @override
  Future<List<RowEntity>> getLocalRowsByYear(int idSana) async {
    final query = localDatabase.select(localDatabase.rowsTable)
      ..where((tbl) => tbl.idSana.equals(idSana));
    final rows = await query.get();
    return rows.map((r) => RowEntity.fromDrift(r)).toList();
  }

  @override
  Future<void> seedLocalLookupTables({
    required List<SanaEntity> years,
    required List<EdaraEntity> edaras,
    required List<RowEntity> rows,
  }) async {
    await localDatabase.transaction(() async {
      // Clear existing records
      await localDatabase.delete(localDatabase.sanasTable).go();
      await localDatabase.delete(localDatabase.edarasTable).go();
      await localDatabase.delete(localDatabase.rowsTable).go();

      // Insert new batch data
      await localDatabase.batch((batch) {
        for (final item in years) {
          batch.insert(localDatabase.sanasTable, item.toDriftCompanion());
        }
        for (final item in edaras) {
          batch.insert(localDatabase.edarasTable, item.toDriftCompanion());
        }
        for (final item in rows) {
          batch.insert(localDatabase.rowsTable, item.toDriftCompanion());
        }
      });
    });
  }

  // ===========================================================================
  // 2. REMOTE SUPABASE QUERIES (ONLINE)
  // ===========================================================================

  @override
Future<StudentNameEntity?> getStudentByNationalId(String nationalId) async {
  const bool isDevelopmentMockMode = true;

  if (isDevelopmentMockMode) {
    try {
      return _mockRemoteStudents.firstWhere((s) => s.nationalId == nationalId);
    } catch (_) {
      return null;
    }
  }
  //TODO: uncomment after testing
  // try {
  //   final response = await supabase
  //       .from('names')
  //       .select()
  //       .eq('nat', nationalId)
  //       .maybeSingle();

  //   if (response != null) {
  //     return StudentNameEntity.fromSupabase(response);
  //   }
  // } catch (_) {}

  // return null;
}

  @override
Future<List<StudentNameEntity>> searchStudents({
  required int idSana,
  required int idEdara,
  required int idRow,
  int? idSchool,
  int? idCase,
  String? nameQuery,
}) async {
  // 1. FAST PATH: Return local mock list immediately during mock dev phase
  // (Remove or toggle this flag once live Supabase access is configured)
  const bool isDevelopmentMockMode = true;

  if (isDevelopmentMockMode) {
    List<StudentNameEntity> results = _mockRemoteStudents.where((s) {
      return s.idSana == idSana && s.idEdara == idEdara && s.idRow == idRow;
    }).toList();

    if (nameQuery != null && nameQuery.trim().isNotEmpty) {
      final cleanQuery = _normalizeArabic(nameQuery);
      results = results
          .where((s) => _normalizeArabic(s.name).contains(cleanQuery))
          .toList();
    }

    return results;
  }

//   //TODO: 2. REMOTE PATH: Executes once live Supabase credentials are wired up
//   try {
//     final response = await supabase
//         .from('names')
//         .select()
//         .eq('idsana', idSana)
//         .eq('idedara', idEdara)
//         .eq('idrow', idRow);

//     final List<dynamic> dataList = response as List<dynamic>;
//     var results = dataList
//         .map((json) => StudentNameEntity.fromSupabase(json as Map<String, dynamic>))
//         .toList();

//     if (nameQuery != null && nameQuery.trim().isNotEmpty) {
//       final cleanQuery = _normalizeArabic(nameQuery);
//       results = results
//           .where((s) => _normalizeArabic(s.name).contains(cleanQuery))
//           .toList();
//     }

//     return results;
//   } catch (e) {
//     return [];
//   }
}

  @override
  Future<List<RowCaseEntity>> getCasesByRow({
    required int idRow,
    required int idSana,
  }) async {
    final response = await supabase
        .from('rowcase')
        .select()
        .eq('idrow', idRow)
        .eq('idsana', idSana);

    final List<dynamic> dataList = response as List<dynamic>;
    return dataList
        .map((json) => RowCaseEntity.fromSupabase(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<SchoolEntity>> getSchoolsByCase(int idCase) async {
    final response = await supabase
        .from('school')
        .select()
        .eq('idcase', idCase);

    final List<dynamic> dataList = response as List<dynamic>;
    return dataList
        .map((json) => SchoolEntity.fromSupabase(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<StudentScoreEntity>> getStudentScores(int stuId) async {
    // Foreign Key join query in Supabase: fetches scores joined with subject details
    final response = await supabase
        .from('score')
        .select('*, subject:idsubject (*)')
        .eq('stu_id', stuId);

    final List<dynamic> dataList = response as List<dynamic>;
    return dataList
        .map(
          (json) =>
              StudentScoreEntity.fromSupabase(json as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Future<StudentCertificateEntity?> getStudentCertificate(int stuId) async {
    // 1. Fetch student info
    final studentResponse = await supabase
        .from('names')
        .select()
        .eq('stu_id', stuId)
        .maybeSingle();

    if (studentResponse == null) return null;

    final student = StudentNameEntity.fromSupabase(studentResponse);

    // 2. Fetch student scores
    final scores = await getStudentScores(stuId);

    return StudentCertificateEntity(student: student, scores: scores);
  }

  //TODO: FOR TESTING
  List<StudentNameEntity> _mockRemoteStudents = [];
  @override
  Future<void> seedMockData() async {
    // 1. Seed Local Years (Sana)
    final existingYears = await getLocalYears();
    if (existingYears.isEmpty) {
      final mockYears = [
        const SanaEntity(idSana: 24, sana: 2024),
        const SanaEntity(idSana: 25, sana: 2025),
        const SanaEntity(idSana: 26, sana: 2026),
      ];
      for (final year in mockYears) {
        await localDatabase
            .into(localDatabase.sanasTable)
            .insertOnConflictUpdate(year.toDriftCompanion());
      }
    }

    // 2. Seed Local Administrations (Edara: 1 = العدوة to 9 = ديرمواس)
    final existingEdaras = await getLocalEdaras();
    if (existingEdaras.isEmpty) {
      final mockEdaras = [
        const EdaraEntity(idEdara: 1, edara: 'العدوة'),
        const EdaraEntity(idEdara: 2, edara: 'مغاقة'),
        const EdaraEntity(idEdara: 3, edara: 'بني مزار'),
        const EdaraEntity(idEdara: 4, edara: 'مطاي'),
        const EdaraEntity(idEdara: 5, edara: 'سمالوط'),
        const EdaraEntity(idEdara: 6, edara: 'المنيا'),
        const EdaraEntity(idEdara: 7, edara: 'أبو قرقاص'),
        const EdaraEntity(idEdara: 8, edara: 'ملوي'),
        const EdaraEntity(idEdara: 9, edara: 'ديرمواس'),
      ];
      for (final edara in mockEdaras) {
        await localDatabase
            .into(localDatabase.edarasTable)
            .insertOnConflictUpdate(edara.toDriftCompanion());
      }
    }

    // 3. Seed Local Education Paths (Row)
    final existingRows = await getLocalRowsByYear(24);
    if (existingRows.isEmpty) {
      final mockRows = [
        // 2024
        const RowEntity(idRow: 1, row: 'ثانوي عام', idSana: 24),
        const RowEntity(idRow: 2, row: 'تعليم فني صناعي', idSana: 24),
        const RowEntity(idRow: 3, row: 'تعليم فني تجاري', idSana: 24),
        const RowEntity(idRow: 4, row: 'تعليم فني زراعي', idSana: 24),
        // 2025
        const RowEntity(idRow: 1, row: 'ثانوي عام', idSana: 25),
        const RowEntity(idRow: 2, row: 'تعليم فني صناعي', idSana: 25),
        // 2026
        const RowEntity(idRow: 1, row: 'ثانوي عام', idSana: 26),
        const RowEntity(idRow: 2, row: 'تعليم فني صناعي', idSana: 26),
      ];
      for (final row in mockRows) {
        await localDatabase
            .into(localDatabase.rowsTable)
            .insertOnConflictUpdate(row.toDriftCompanion());
      }
    }
    _mockRemoteStudents = [
      // --- Year: 2024 (idSana: 24), Edara: العدوة (idEdara: 1), Row: ثانوي عام (idRow: 1) ---
      const StudentNameEntity(
        stuId: 101,
        pf: 'pass',
        idSana: 24,
        idEdara: 1,
        idRow: 1,
        total: 280.0,
        nationalId: '30201010111234',
        seatNumber: '10001',
        name: 'أحمد محمود علي',
        systemType: 'انتظام',
        round: 'دور أول',
      ),
      const StudentNameEntity(
        stuId: 102,
        pf: 'pass',
        idSana: 24,
        idEdara: 1,
        idRow: 1,
        total: 265.5,
        nationalId: '30201010231234',
        seatNumber: '10002',
        name: 'أحمد إبراهيم حسين',
        systemType: 'انتظام',
        round: 'دور أول',
      ),
      const StudentNameEntity(
        stuId: 103,
        pf: 'pass',
        idSana: 24,
        idEdara: 1,
        idRow: 1,
        total: 272.0,
        nationalId: '30201010101234',
        seatNumber: '10003',
        name: 'سارة محمود علي',
        systemType: 'منازل',
        round: 'دور أول',
      ),
      const StudentNameEntity(
        stuId: 104,
        pf: 'fail',
        idSana: 24,
        idEdara: 1,
        idRow: 1,
        total: 140.0,
        nationalId: '30201010105678',
        seatNumber: '10004',
        name: 'عمر خالد يوسف',
        systemType: 'انتظام',
        round: 'دور ثاني',
      ),

      // --- Year: 2024 (idSana: 24), Edara: المنيا (idEdara: 6), Row: تعليم فني صناعي (idRow: 2) ---
      const StudentNameEntity(
        stuId: 105,
        pf: 'pass',
        idSana: 24,
        idEdara: 6,
        idRow: 2,
        total: 510.0,
        nationalId: '30204120108899',
        seatNumber: '20001',
        name: 'حسن محمد عبد السلام',
        systemType: 'خدمات',
        round: 'دور أول',
      ),

      // --- Year: 2025 (idSana: 25), Edara: مغاقة (idEdara: 2), Row: ثانوي عام (idRow: 1) ---
      const StudentNameEntity(
        stuId: 106,
        pf: 'pass',
        idSana: 25,
        idEdara: 2,
        idRow: 1,
        total: 295.0,
        nationalId: '30105150204321',
        seatNumber: '30001',
        name: 'سارة إبراهيم حسن',
        systemType: 'انتظام',
        round: 'دور أول',
      ),
    ];
  }
}

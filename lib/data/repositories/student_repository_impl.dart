import 'package:student_program/data/datasources/app_database.dart';
import 'package:student_program/domain/entities/local_lookup_entities.dart';
import 'package:student_program/domain/entities/rowcase_entity.dart';
import 'package:student_program/domain/entities/school_entity.dart';
import 'package:student_program/domain/entities/student_certificate_entity.dart';
import 'package:student_program/domain/entities/student_name_entity.dart';
import 'package:student_program/domain/entities/student_score_entity.dart';
import 'package:student_program/domain/repositories/student_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class StudentRepositoryImpl implements StudentRepository {
  final AppDatabase localDatabase;
  final SupabaseClient supabase;

  StudentRepositoryImpl({required this.localDatabase, required this.supabase});

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

  @override
  Future<StudentNameEntity?> getStudentByNationalId(String nationalId) async {
    try {
      final response = await supabase
          .from('names')
          .select()
          .eq('nat', nationalId)
          .maybeSingle();

      if (response != null) {
        return StudentNameEntity.fromSupabase(response);
      }
    } catch (_) {}

    return null;
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
    try {
      var query = supabase
          .from('names')
          .select()
          .eq('idsana', idSana)
          .eq('idedara', idEdara)
          .eq('idrow', idRow);

      if (nameQuery != null && nameQuery.trim().isNotEmpty) {
        query = query.ilike('name', '%${nameQuery.trim()}%');
      }

      final response = await query;
      final List<dynamic> dataList = response as List<dynamic>;

      return dataList
          .map(
            (json) =>
                StudentNameEntity.fromSupabase(json as Map<String, dynamic>),
          )
          .toList();
    } catch (_) {
      return [];
    }
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
}

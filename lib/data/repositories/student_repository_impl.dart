import 'package:drift/drift.dart';
import '../../domain/entities/student.dart';
import '../../domain/repositories/student_repository.dart';
import '../datasources/app_database.dart';

class StudentRepositoryImpl implements StudentRepository {
  final AppDatabase database;

  StudentRepositoryImpl(this.database);

  // Helper method to normalize Arabic characters for consistent searching
  String _normalizeArabic(String text) {
    return text
        .trim()
        .replaceAll(RegExp(r'[أإآ]'), 'ا')
        .replaceAll('ى', 'ي')
        .replaceAll('ة', 'ه');
  }

  @override
  Future<List<String>> getYears() async {
    final query = database.selectOnly(database.studentsTable, distinct: true)
      ..addColumns([database.studentsTable.year]);
    final rows = await query.get();
    return rows.map((r) => r.read(database.studentsTable.year)!).toList();
  }

  @override
  Future<List<String>> getEducationTypes({required String year}) async {
    final query = database.selectOnly(database.studentsTable, distinct: true)
      ..where(database.studentsTable.year.equals(year))
      ..addColumns([database.studentsTable.education]);
    final rows = await query.get();
    return rows.map((r) => r.read(database.studentsTable.education)!).toList();
  }

  @override
  Future<List<String>> getGovernorates({
    required String year,
    required String education,
  }) async {
    final query = database.selectOnly(database.studentsTable, distinct: true)
      ..where(
        database.studentsTable.year.equals(year) &
            database.studentsTable.education.equals(education),
      )
      ..addColumns([database.studentsTable.governorate]);
    final rows = await query.get();
    return rows
        .map((r) => r.read(database.studentsTable.governorate)!)
        .toList();
  }

  @override
  Future<List<String>> getSchools({
    required String year,
    required String education,
    required String governorate,
  }) async {
    final query = database.selectOnly(database.studentsTable, distinct: true)
      ..where(
        database.studentsTable.year.equals(year) &
            database.studentsTable.education.equals(education) &
            database.studentsTable.governorate.equals(governorate),
      )
      ..addColumns([database.studentsTable.school]);
    final rows = await query.get();
    return rows.map((r) => r.read(database.studentsTable.school)!).toList();
  }

  @override
  Future<List<String>> getMatchingNames({
    required String year,
    required String education,
    required String governorate,
    required String school,
    required String query,
  }) async {
    // 1. Get all students matching the selected dropdown criteria
    final stmt = database.select(database.studentsTable)
      ..where(
        (tbl) =>
            tbl.year.equals(year) &
            tbl.education.equals(education) &
            tbl.governorate.equals(governorate) &
            tbl.school.equals(school),
      );

    final rows = await stmt.get();
    final cleanQuery = _normalizeArabic(query);

    // 2. Filter in Dart using normalized Arabic comparison so "احمد" matches "أحمد"
    return rows
        .where((r) {
          if (cleanQuery.isEmpty)
            return true; // Return all matching names if query is empty
          final normalizedDbName = _normalizeArabic(r.name);
          return normalizedDbName.contains(cleanQuery);
        })
        .map((r) => r.name.trim())
        .toSet()
        .toList();
  }

  @override
  Future<Student?> getStudentByDetails({
    required String name,
    required String year,
    required String education,
    required String governorate,
    required String school,
  }) async {
    final targetName = _normalizeArabic(name);

    // Fetch all candidates matching the dropdown criteria
    final query = database.select(database.studentsTable)
      ..where(
        (tbl) =>
            tbl.year.equals(year) &
            tbl.education.equals(education) &
            tbl.governorate.equals(governorate) &
            tbl.school.equals(school),
      );

    final rows = await query.get();

    // Verify exact match using normalized string evaluation
    for (final row in rows) {
      if (_normalizeArabic(row.name) == targetName) {
        return Student.fromDrift(row);
      }
    }

    return null;
  }

  @override
  Future<List<Student>> getAllStudents() async {
    final rows = await database.select(database.studentsTable).get();
    return rows.map((row) => Student.fromDrift(row)).toList();
  }

  @override
  Future<Student?> getStudentByNationalId(String nationalId) async {
    final query = database.select(database.studentsTable)
      ..where((tbl) => tbl.nationalId.equals(nationalId));
    final row = await query.getSingleOrNull();
    return row != null ? Student.fromDrift(row) : null;
  }

  @override
  Future<void> saveStudent(Student student) async {
    await database
        .into(database.studentsTable)
        .insert(student.toDriftCompanion());
  }

  @override
  Future<void> seedMockData() async {
    await database.delete(database.studentsTable).go();
    final count = await database.select(database.studentsTable).get();
    if (count.isNotEmpty) return;

    final mockStudents = [
      Student(
        nationalId: '30201010111234',
        name: 'أحمد محمود علي',
        year: '2024',
        education: 'ثانوي عام',
        governorate: 'القاهرة',
        school: 'مدرسة التوفيقية الثانوية',
      ),
      Student(
        nationalId: '30201010231234',
        name: 'أحمد إبراهيم حسين',
        year: '2024',
        education: 'ثانوي عام',
        governorate: 'القاهرة',
        school: 'مدرسة التوفيقية الثانوية',
      ),
      Student(
        nationalId: '30201010101234',
        name: 'سارة محمود علي',
        year: '2024',
        education: 'ثانوي عام',
        governorate: 'القاهرة',
        school: 'مدرسة التوفيقية الثانوية',
      ),
      Student(
        nationalId: '30201010105678',
        name: 'عمر خالد يوسف',
        year: '2024',
        education: 'ثانوي عام',
        governorate: 'القاهرة',
        school: 'مدرسة التوفيقية الثانوية',
      ),

      // --- 2024 / ثانوي عام / القاهرة / مدرسة الخديوية الثانوية ---
      Student(
        nationalId: '30204120108899',
        name: 'حسن محمد عبد السلام',
        year: '2024',
        education: 'ثانوي عام',
        governorate: 'القاهرة',
        school: 'مدرسة الخديوية الثانوية',
      ),
      Student(
        nationalId: '30209150103344',
        name: 'ياسمين أحمد السيد',
        year: '2024',
        education: 'ثانوي عام',
        governorate: 'القاهرة',
        school: 'مدرسة الخديوية الثانوية',
      ),

      // --- 2025 / ثانوي أزهري / الجيزة / مدرسة السعيدية الثانوية ---
      Student(
        nationalId: '30105150204321',
        name: 'سارة إبراهيم حسن',
        year: '2025',
        education: 'ثانوي أزهري',
        governorate: 'الجيزة',
        school: 'مدرسة السعيدية الثانوية',
      ),
      Student(
        nationalId: '30107220209911',
        name: 'عبد الرحمن مصطفى محمود',
        year: '2025',
        education: 'ثانوي أزهري',
        governorate: 'الجيزة',
        school: 'مدرسة السعيدية الثانوية',
      ),
      Student(
        nationalId: '30111050207766',
        name: 'فاطمة الزهراء علي',
        year: '2025',
        education: 'ثانوي أزهري',
        governorate: 'الجيزة',
        school: 'مدرسة السعيدية الثانوية',
      ),

      // --- 2023 / ثانوي عام / الأسكندرية / مدرسة النصر ---
      Student(
        nationalId: '30308200305678',
        name: 'محمد مصطفى كامل',
        year: '2023',
        education: 'ثانوي عام',
        governorate: 'الأسكندرية',
        school: 'مدرسة النصر',
      ),
      Student(
        nationalId: '30302110301122',
        name: 'مريم عادل الشريف',
        year: '2023',
        education: 'ثانوي عام',
        governorate: 'الأسكندرية',
        school: 'مدرسة النصر',
      ),

      // --- 2025 / ثانوي فني / الشرقية / مدرسة الزقازيق الصناعية ---
      Student(
        nationalId: '30501011304455',
        name: 'محمود طارق عبد العزيز',
        year: '2025',
        education: 'ثانوي فني',
        governorate: 'الشرقية',
        school: 'مدرسة الزقازيق الصناعية',
      ),
      Student(
        nationalId: '30506181302211',
        name: 'أحمد فتحي عبد الفتاح',
        year: '2025',
        education: 'ثانوي فني',
        governorate: 'الشرقية',
        school: 'مدرسة الزقازيق الصناعية',
      ),

      // --- 2024 / ثانوي أزهري / الدقهلية / مدرسة المنصورة الأزهرية ---
      Student(
        nationalId: '30403151206677',
        name: 'نور الدين عصام الدين',
        year: '2024',
        education: 'ثانوي أزهري',
        governorate: 'الدقهلية',
        school: 'مدرسة المنصورة الأزهرية',
      ),
      Student(
        nationalId: '30409201208833',
        name: 'آية سامح صلاح',
        year: '2024',
        education: 'ثانوي أزهري',
        governorate: 'الدقهلية',
        school: 'مدرسة المنصورة الأزهرية',
      ),
    ];

    await database.batch((batch) {
      for (final student in mockStudents) {
        batch.insert(database.studentsTable, student.toDriftCompanion());
      }
    });
  }
}

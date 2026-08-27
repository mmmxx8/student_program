import '../entities/student.dart';

abstract class StudentRepository {
  // Existing methods...
  Future<List<Student>> getAllStudents();
  Future<Student?> getStudentByNationalId(String nationalId);
  Future<void> saveStudent(Student student);

  // Cascading distinct queries
  Future<List<String>> getYears();
  Future<List<String>> getEducationTypes({required String year});
  Future<List<String>> getGovernorates({
    required String year,
    required String education,
  });
  Future<List<String>> getSchools({
    required String year,
    required String education,
    required String governorate,
  });

  // Auto-complete names based on current dropdown selections
  Future<List<String>> getMatchingNames({
    required String year,
    required String education,
    required String governorate,
    required String school,
    required String query,
  });
  Future<Student?> getStudentByDetails({
    required String name,
    required String year,
    required String education,
    required String governorate,
    required String school,
  });
  Future<void> seedMockData();
}

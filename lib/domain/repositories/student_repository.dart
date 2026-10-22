import 'package:student_program/domain/entities/local_lookup_entities.dart';
import 'package:student_program/domain/entities/rowcase_entity.dart';
import 'package:student_program/domain/entities/school_entity.dart';
import 'package:student_program/domain/entities/student_certificate_entity.dart';
import 'package:student_program/domain/entities/student_name_entity.dart';
import 'package:student_program/domain/entities/student_score_entity.dart';


abstract class StudentRepository {
  // --- Local Drift Queries ---
  Future<List<SanaEntity>> getLocalYears();
  Future<List<EdaraEntity>> getLocalEdaras();
  Future<List<RowEntity>> getLocalRowsByYear(int idSana);
  Future<void> seedLocalLookupTables({
    required List<SanaEntity> years,
    required List<EdaraEntity> edaras,
    required List<RowEntity> rows,
  });

  // --- Remote Supabase Queries ---
  Future<StudentNameEntity?> getStudentByNationalId(String nationalId);
  
  Future<List<StudentNameEntity>> searchStudents({
    required int idSana,
    required int idEdara,
    required int idRow,
    int? idSchool,
    int? idCase,
    String? nameQuery,
  });

  Future<List<SchoolEntity>> getSchoolsByCase(int idCase);
  
  Future<List<RowCaseEntity>> getCasesByRow({
    required int idRow,
    required int idSana,
  });

  Future<List<StudentScoreEntity>> getStudentScores(int stuId);
  
  Future<StudentCertificateEntity?> getStudentCertificate(int stuId);
  Future<void> seedMockData();
}
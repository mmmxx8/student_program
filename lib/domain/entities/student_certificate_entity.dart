import 'package:student_program/domain/entities/student_name_entity.dart';
import 'package:student_program/domain/entities/student_score_entity.dart';

class StudentCertificateEntity {
  final StudentNameEntity student;
  final List<StudentScoreEntity> scores;

  const StudentCertificateEntity({
    required this.student,
    required this.scores,
  });
}
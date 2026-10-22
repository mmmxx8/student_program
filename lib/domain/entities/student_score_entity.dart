import 'package:student_program/domain/entities/subject_entity.dart';

class StudentScoreEntity {
  final int stuId;
  final int idSubject;
  final double score;
  final SubjectEntity? subjectDetails;

  const StudentScoreEntity({
    required this.stuId,
    required this.idSubject,
    required this.score,
    this.subjectDetails,
  });

  factory StudentScoreEntity.fromSupabase(Map<String, dynamic> json) {
    return StudentScoreEntity(
      stuId: json['stu_id'] as int,
      idSubject: json['idsubject'] as int,
      score: (json['score'] as num).toDouble(),
      // Handle nested Supabase join query: .select('*, subject:subject(*)')
      subjectDetails: json['subject'] != null
          ? SubjectEntity.fromSupabase(json['subject'] as Map<String, dynamic>)
          : null,
    );
  }
}
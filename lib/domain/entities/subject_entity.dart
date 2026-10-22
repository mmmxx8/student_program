class SubjectEntity {
  final int idSubject;
  final int idCase;
  final int idSana;
  final String caseName;
  final String? subSubject;
  final String subjectName;
  final double maxScore;
  final double minScore;
  final String? translation;

  const SubjectEntity({
    required this.idSubject,
    required this.idCase,
    required this.idSana,
    required this.caseName,
    this.subSubject,
    required this.subjectName,
    required this.maxScore,
    required this.minScore,
    this.translation,
  });

  factory SubjectEntity.fromSupabase(Map<String, dynamic> json) {
    return SubjectEntity(
      idSubject: json['idsubject'] as int,
      idCase: json['idcase'] as int,
      idSana: json['idsana'] as int,
      caseName: json['case'] as String? ?? '',
      subSubject: json['subsubject'] as String?,
      subjectName: json['subject'] as String,
      maxScore: (json['max'] as num).toDouble(),
      minScore: (json['min'] as num).toDouble(),
      translation: json['translation'] as String?,
    );
  }
}
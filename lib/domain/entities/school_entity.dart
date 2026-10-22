class SchoolEntity {
  final int idSchool;
  final String schoolName;
  final int? idCase;
  final String? caseName;
  final String? englishSchool;

  const SchoolEntity({
    required this.idSchool,
    required this.schoolName,
    this.idCase,
    this.caseName,
    this.englishSchool,
  });

  factory SchoolEntity.fromSupabase(Map<String, dynamic> json) {
    return SchoolEntity(
      idSchool: json['idschool'] as int,
      schoolName: json['school'] as String,
      idCase: json['idcase'] as int?,
      caseName: json['case'] as String?,
      englishSchool: json['english_school'] as String?,
    );
  }
}
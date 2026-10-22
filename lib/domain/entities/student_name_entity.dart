class StudentNameEntity {
  final int stuId;
  final String pf;
  final int idSana;
  final int idEdara;
  final int idRow;
  final int? idSchool;
  final int? idCase;
  final double total;
  final String? nationalId;
  final String seatNumber;
  final String name;
  final String? systemType;
  final String? round;
  final double? maxTotal;
  final String? translation;

  const StudentNameEntity({
    required this.stuId,
    required this.pf,
    required this.idSana,
    required this.idEdara,
    required this.idRow,
    this.idSchool,
    this.idCase,
    required this.total,
    this.nationalId,
    required this.seatNumber,
    required this.name,
    this.systemType,
    this.round,
    this.maxTotal,
    this.translation,
  });

  factory StudentNameEntity.fromSupabase(Map<String, dynamic> json) {
    return StudentNameEntity(
      stuId: json['Stu_id'] != null ? (json['Stu_id'] as num).toInt() : 0,
      pf: json['PF'] as String? ?? '',
      idSana: json['idsana'] != null ? (json['idsana'] as num).toInt() : 0,
      idEdara: json['idedara'] != null ? (json['idedara'] as num).toInt() : 0,
      idRow: json['idrow'] != null ? (json['idrow'] as num).toInt() : 0,
      idSchool: json['idschool'] != null
          ? (json['idschool'] as num).toInt()
          : null,
      idCase: json['idcase'] != null ? (json['idcase'] as num).toInt() : null,
      total: json['Total'] != null ? (json['Total'] as num).toDouble() : 0.0,
      nationalId: json['nat']?.toString(),
      seatNumber: json['no']?.toString() ?? '',
      name: json['name'] as String? ?? '',
      systemType: json['noaa'] as String?,
      round: json['hala'] as String?,
    );
  }
}

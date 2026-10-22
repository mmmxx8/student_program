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
      stuId: json['stu_id'] as int,
      pf: json['PF'] as String? ?? 'pass',
      idSana: json['idsana'] as int,
      idEdara: json['idedara'] as int,
      idRow: json['idrow'] as int,
      idSchool: json['idschool'] as int?,
      idCase: json['idcase'] as int?,
      total: (json['total'] as num).toDouble(),
      nationalId: json['nat'] as String?,
      seatNumber: json['no'].toString(),
      name: json['name'] as String,
      systemType: json['system_type'] as String?,
      round: json['round'] as String?,
      maxTotal: (json['max_total'] as num?)?.toDouble(),
      translation: json['translation'] as String?,
    );
  }
}
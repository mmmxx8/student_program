class RowCaseEntity {
  final int idCase;
  final int idSana;
  final String caseName;
  final int idRow;
  final String row;

  const RowCaseEntity({
    required this.idCase,
    required this.idSana,
    required this.caseName,
    required this.idRow,
    required this.row,
  });

  factory RowCaseEntity.fromSupabase(Map<String, dynamic> json) {
    return RowCaseEntity(
      idCase: json['idcase'] as int,
      idSana: json['idsana'] as int,
      caseName: json['case'] as String,
      idRow: json['idrow'] as int,
      row: json['row'] as String,
    );
  }
}
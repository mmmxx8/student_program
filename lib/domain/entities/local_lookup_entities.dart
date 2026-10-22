import 'package:drift/drift.dart' as drift;
import 'package:student_program/data/datasources/app_database.dart';
class SanaEntity {
  final int idSana; // 2-digit code (e.g., 26)
  final int sana;   // 4-digit year (e.g., 2026)

  const SanaEntity({
    required this.idSana,
    required this.sana,
  });

  // Fixed: Correct Drift Data Class name is SanasTableData
  factory SanaEntity.fromDrift(SanasTableData row) {
    return SanaEntity(
      idSana: row.idSana,
      sana: row.sana,
    );
  }

  // Fixed: Wrap integer in Value() if Drift generated Value<int> for manual primary key
  SanasTableCompanion toDriftCompanion() {
    return SanasTableCompanion.insert(
      idSana: drift.Value(idSana),
      sana: sana,
    );
  }
}

class EdaraEntity {
  final int idEdara;
  final String edara;
  final String? loc;

  const EdaraEntity({
    required this.idEdara,
    required this.edara,
    this.loc,
  });

  // Fixed: Correct Drift Data Class name is EdarasTableData
  factory EdaraEntity.fromDrift(EdarasTableData row) {
    return EdaraEntity(
      idEdara: row.idEdara,
      edara: row.edara,
      loc: row.loc,
    );
  }

  // Fixed: Wrap idEdara in Value()
  EdarasTableCompanion toDriftCompanion() {
    return EdarasTableCompanion.insert(
      idEdara: drift.Value(idEdara),
      edara: edara,
      loc: drift.Value(loc),
    );
  }
}

class RowEntity {
  final int idRow;
  final String row;
  final int idSana;

  const RowEntity({required this.idRow, required this.row, required this.idSana});

  factory RowEntity.fromDrift(RowsTableData row) {
    return RowEntity(idRow: row.idRow, row: row.rowName, idSana: row.idSana);
  }

  RowsTableCompanion toDriftCompanion() {
    return RowsTableCompanion.insert(
      idRow: idRow,
      rowName: row,
      idSana: idSana,
    );
  }
}
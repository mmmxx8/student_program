// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SanasTableTable extends SanasTable
    with TableInfo<$SanasTableTable, SanasTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SanasTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSanaMeta = const VerificationMeta('idSana');
  @override
  late final GeneratedColumn<int> idSana = GeneratedColumn<int>(
    'id_sana',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sanaMeta = const VerificationMeta('sana');
  @override
  late final GeneratedColumn<int> sana = GeneratedColumn<int>(
    'sana',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [idSana, sana];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sanas_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SanasTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_sana')) {
      context.handle(
        _idSanaMeta,
        idSana.isAcceptableOrUnknown(data['id_sana']!, _idSanaMeta),
      );
    }
    if (data.containsKey('sana')) {
      context.handle(
        _sanaMeta,
        sana.isAcceptableOrUnknown(data['sana']!, _sanaMeta),
      );
    } else if (isInserting) {
      context.missing(_sanaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSana};
  @override
  SanasTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SanasTableData(
      idSana: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_sana'],
      )!,
      sana: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sana'],
      )!,
    );
  }

  @override
  $SanasTableTable createAlias(String alias) {
    return $SanasTableTable(attachedDatabase, alias);
  }
}

class SanasTableData extends DataClass implements Insertable<SanasTableData> {
  final int idSana;
  final int sana;
  const SanasTableData({required this.idSana, required this.sana});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_sana'] = Variable<int>(idSana);
    map['sana'] = Variable<int>(sana);
    return map;
  }

  SanasTableCompanion toCompanion(bool nullToAbsent) {
    return SanasTableCompanion(idSana: Value(idSana), sana: Value(sana));
  }

  factory SanasTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SanasTableData(
      idSana: serializer.fromJson<int>(json['idSana']),
      sana: serializer.fromJson<int>(json['sana']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSana': serializer.toJson<int>(idSana),
      'sana': serializer.toJson<int>(sana),
    };
  }

  SanasTableData copyWith({int? idSana, int? sana}) =>
      SanasTableData(idSana: idSana ?? this.idSana, sana: sana ?? this.sana);
  SanasTableData copyWithCompanion(SanasTableCompanion data) {
    return SanasTableData(
      idSana: data.idSana.present ? data.idSana.value : this.idSana,
      sana: data.sana.present ? data.sana.value : this.sana,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SanasTableData(')
          ..write('idSana: $idSana, ')
          ..write('sana: $sana')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idSana, sana);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SanasTableData &&
          other.idSana == this.idSana &&
          other.sana == this.sana);
}

class SanasTableCompanion extends UpdateCompanion<SanasTableData> {
  final Value<int> idSana;
  final Value<int> sana;
  const SanasTableCompanion({
    this.idSana = const Value.absent(),
    this.sana = const Value.absent(),
  });
  SanasTableCompanion.insert({
    this.idSana = const Value.absent(),
    required int sana,
  }) : sana = Value(sana);
  static Insertable<SanasTableData> custom({
    Expression<int>? idSana,
    Expression<int>? sana,
  }) {
    return RawValuesInsertable({
      if (idSana != null) 'id_sana': idSana,
      if (sana != null) 'sana': sana,
    });
  }

  SanasTableCompanion copyWith({Value<int>? idSana, Value<int>? sana}) {
    return SanasTableCompanion(
      idSana: idSana ?? this.idSana,
      sana: sana ?? this.sana,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSana.present) {
      map['id_sana'] = Variable<int>(idSana.value);
    }
    if (sana.present) {
      map['sana'] = Variable<int>(sana.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SanasTableCompanion(')
          ..write('idSana: $idSana, ')
          ..write('sana: $sana')
          ..write(')'))
        .toString();
  }
}

class $EdarasTableTable extends EdarasTable
    with TableInfo<$EdarasTableTable, EdarasTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EdarasTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idEdaraMeta = const VerificationMeta(
    'idEdara',
  );
  @override
  late final GeneratedColumn<int> idEdara = GeneratedColumn<int>(
    'id_edara',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _edaraMeta = const VerificationMeta('edara');
  @override
  late final GeneratedColumn<String> edara = GeneratedColumn<String>(
    'edara',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _locMeta = const VerificationMeta('loc');
  @override
  late final GeneratedColumn<String> loc = GeneratedColumn<String>(
    'loc',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [idEdara, edara, loc];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'edaras_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<EdarasTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_edara')) {
      context.handle(
        _idEdaraMeta,
        idEdara.isAcceptableOrUnknown(data['id_edara']!, _idEdaraMeta),
      );
    }
    if (data.containsKey('edara')) {
      context.handle(
        _edaraMeta,
        edara.isAcceptableOrUnknown(data['edara']!, _edaraMeta),
      );
    } else if (isInserting) {
      context.missing(_edaraMeta);
    }
    if (data.containsKey('loc')) {
      context.handle(
        _locMeta,
        loc.isAcceptableOrUnknown(data['loc']!, _locMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idEdara};
  @override
  EdarasTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EdarasTableData(
      idEdara: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_edara'],
      )!,
      edara: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}edara'],
      )!,
      loc: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}loc'],
      ),
    );
  }

  @override
  $EdarasTableTable createAlias(String alias) {
    return $EdarasTableTable(attachedDatabase, alias);
  }
}

class EdarasTableData extends DataClass implements Insertable<EdarasTableData> {
  final int idEdara;
  final String edara;
  final String? loc;
  const EdarasTableData({required this.idEdara, required this.edara, this.loc});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_edara'] = Variable<int>(idEdara);
    map['edara'] = Variable<String>(edara);
    if (!nullToAbsent || loc != null) {
      map['loc'] = Variable<String>(loc);
    }
    return map;
  }

  EdarasTableCompanion toCompanion(bool nullToAbsent) {
    return EdarasTableCompanion(
      idEdara: Value(idEdara),
      edara: Value(edara),
      loc: loc == null && nullToAbsent ? const Value.absent() : Value(loc),
    );
  }

  factory EdarasTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EdarasTableData(
      idEdara: serializer.fromJson<int>(json['idEdara']),
      edara: serializer.fromJson<String>(json['edara']),
      loc: serializer.fromJson<String?>(json['loc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idEdara': serializer.toJson<int>(idEdara),
      'edara': serializer.toJson<String>(edara),
      'loc': serializer.toJson<String?>(loc),
    };
  }

  EdarasTableData copyWith({
    int? idEdara,
    String? edara,
    Value<String?> loc = const Value.absent(),
  }) => EdarasTableData(
    idEdara: idEdara ?? this.idEdara,
    edara: edara ?? this.edara,
    loc: loc.present ? loc.value : this.loc,
  );
  EdarasTableData copyWithCompanion(EdarasTableCompanion data) {
    return EdarasTableData(
      idEdara: data.idEdara.present ? data.idEdara.value : this.idEdara,
      edara: data.edara.present ? data.edara.value : this.edara,
      loc: data.loc.present ? data.loc.value : this.loc,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EdarasTableData(')
          ..write('idEdara: $idEdara, ')
          ..write('edara: $edara, ')
          ..write('loc: $loc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idEdara, edara, loc);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EdarasTableData &&
          other.idEdara == this.idEdara &&
          other.edara == this.edara &&
          other.loc == this.loc);
}

class EdarasTableCompanion extends UpdateCompanion<EdarasTableData> {
  final Value<int> idEdara;
  final Value<String> edara;
  final Value<String?> loc;
  const EdarasTableCompanion({
    this.idEdara = const Value.absent(),
    this.edara = const Value.absent(),
    this.loc = const Value.absent(),
  });
  EdarasTableCompanion.insert({
    this.idEdara = const Value.absent(),
    required String edara,
    this.loc = const Value.absent(),
  }) : edara = Value(edara);
  static Insertable<EdarasTableData> custom({
    Expression<int>? idEdara,
    Expression<String>? edara,
    Expression<String>? loc,
  }) {
    return RawValuesInsertable({
      if (idEdara != null) 'id_edara': idEdara,
      if (edara != null) 'edara': edara,
      if (loc != null) 'loc': loc,
    });
  }

  EdarasTableCompanion copyWith({
    Value<int>? idEdara,
    Value<String>? edara,
    Value<String?>? loc,
  }) {
    return EdarasTableCompanion(
      idEdara: idEdara ?? this.idEdara,
      edara: edara ?? this.edara,
      loc: loc ?? this.loc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idEdara.present) {
      map['id_edara'] = Variable<int>(idEdara.value);
    }
    if (edara.present) {
      map['edara'] = Variable<String>(edara.value);
    }
    if (loc.present) {
      map['loc'] = Variable<String>(loc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EdarasTableCompanion(')
          ..write('idEdara: $idEdara, ')
          ..write('edara: $edara, ')
          ..write('loc: $loc')
          ..write(')'))
        .toString();
  }
}

class $RowsTableTable extends RowsTable
    with TableInfo<$RowsTableTable, RowsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RowsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idRowMeta = const VerificationMeta('idRow');
  @override
  late final GeneratedColumn<int> idRow = GeneratedColumn<int>(
    'id_row',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rowNameMeta = const VerificationMeta(
    'rowName',
  );
  @override
  late final GeneratedColumn<String> rowName = GeneratedColumn<String>(
    'row_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idSanaMeta = const VerificationMeta('idSana');
  @override
  late final GeneratedColumn<int> idSana = GeneratedColumn<int>(
    'id_sana',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sanas_table (id_sana)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [idRow, rowName, idSana];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'rows_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<RowsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_row')) {
      context.handle(
        _idRowMeta,
        idRow.isAcceptableOrUnknown(data['id_row']!, _idRowMeta),
      );
    } else if (isInserting) {
      context.missing(_idRowMeta);
    }
    if (data.containsKey('row_name')) {
      context.handle(
        _rowNameMeta,
        rowName.isAcceptableOrUnknown(data['row_name']!, _rowNameMeta),
      );
    } else if (isInserting) {
      context.missing(_rowNameMeta);
    }
    if (data.containsKey('id_sana')) {
      context.handle(
        _idSanaMeta,
        idSana.isAcceptableOrUnknown(data['id_sana']!, _idSanaMeta),
      );
    } else if (isInserting) {
      context.missing(_idSanaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idRow, idSana};
  @override
  RowsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RowsTableData(
      idRow: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_row'],
      )!,
      rowName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}row_name'],
      )!,
      idSana: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_sana'],
      )!,
    );
  }

  @override
  $RowsTableTable createAlias(String alias) {
    return $RowsTableTable(attachedDatabase, alias);
  }
}

class RowsTableData extends DataClass implements Insertable<RowsTableData> {
  final int idRow;
  final String rowName;
  final int idSana;
  const RowsTableData({
    required this.idRow,
    required this.rowName,
    required this.idSana,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_row'] = Variable<int>(idRow);
    map['row_name'] = Variable<String>(rowName);
    map['id_sana'] = Variable<int>(idSana);
    return map;
  }

  RowsTableCompanion toCompanion(bool nullToAbsent) {
    return RowsTableCompanion(
      idRow: Value(idRow),
      rowName: Value(rowName),
      idSana: Value(idSana),
    );
  }

  factory RowsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RowsTableData(
      idRow: serializer.fromJson<int>(json['idRow']),
      rowName: serializer.fromJson<String>(json['rowName']),
      idSana: serializer.fromJson<int>(json['idSana']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idRow': serializer.toJson<int>(idRow),
      'rowName': serializer.toJson<String>(rowName),
      'idSana': serializer.toJson<int>(idSana),
    };
  }

  RowsTableData copyWith({int? idRow, String? rowName, int? idSana}) =>
      RowsTableData(
        idRow: idRow ?? this.idRow,
        rowName: rowName ?? this.rowName,
        idSana: idSana ?? this.idSana,
      );
  RowsTableData copyWithCompanion(RowsTableCompanion data) {
    return RowsTableData(
      idRow: data.idRow.present ? data.idRow.value : this.idRow,
      rowName: data.rowName.present ? data.rowName.value : this.rowName,
      idSana: data.idSana.present ? data.idSana.value : this.idSana,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RowsTableData(')
          ..write('idRow: $idRow, ')
          ..write('rowName: $rowName, ')
          ..write('idSana: $idSana')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idRow, rowName, idSana);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RowsTableData &&
          other.idRow == this.idRow &&
          other.rowName == this.rowName &&
          other.idSana == this.idSana);
}

class RowsTableCompanion extends UpdateCompanion<RowsTableData> {
  final Value<int> idRow;
  final Value<String> rowName;
  final Value<int> idSana;
  final Value<int> rowid;
  const RowsTableCompanion({
    this.idRow = const Value.absent(),
    this.rowName = const Value.absent(),
    this.idSana = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RowsTableCompanion.insert({
    required int idRow,
    required String rowName,
    required int idSana,
    this.rowid = const Value.absent(),
  }) : idRow = Value(idRow),
       rowName = Value(rowName),
       idSana = Value(idSana);
  static Insertable<RowsTableData> custom({
    Expression<int>? idRow,
    Expression<String>? rowName,
    Expression<int>? idSana,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idRow != null) 'id_row': idRow,
      if (rowName != null) 'row_name': rowName,
      if (idSana != null) 'id_sana': idSana,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RowsTableCompanion copyWith({
    Value<int>? idRow,
    Value<String>? rowName,
    Value<int>? idSana,
    Value<int>? rowid,
  }) {
    return RowsTableCompanion(
      idRow: idRow ?? this.idRow,
      rowName: rowName ?? this.rowName,
      idSana: idSana ?? this.idSana,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idRow.present) {
      map['id_row'] = Variable<int>(idRow.value);
    }
    if (rowName.present) {
      map['row_name'] = Variable<String>(rowName.value);
    }
    if (idSana.present) {
      map['id_sana'] = Variable<int>(idSana.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RowsTableCompanion(')
          ..write('idRow: $idRow, ')
          ..write('rowName: $rowName, ')
          ..write('idSana: $idSana, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RowCasesTableTable extends RowCasesTable
    with TableInfo<$RowCasesTableTable, RowCasesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RowCasesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idCaseMeta = const VerificationMeta('idCase');
  @override
  late final GeneratedColumn<int> idCase = GeneratedColumn<int>(
    'id_case',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idSanaMeta = const VerificationMeta('idSana');
  @override
  late final GeneratedColumn<int> idSana = GeneratedColumn<int>(
    'id_sana',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sanas_table (id_sana)',
    ),
  );
  static const VerificationMeta _caseNameMeta = const VerificationMeta(
    'caseName',
  );
  @override
  late final GeneratedColumn<String> caseName = GeneratedColumn<String>(
    'case_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idRowMeta = const VerificationMeta('idRow');
  @override
  late final GeneratedColumn<int> idRow = GeneratedColumn<int>(
    'id_row',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [idCase, idSana, caseName, idRow];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'row_cases_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<RowCasesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_case')) {
      context.handle(
        _idCaseMeta,
        idCase.isAcceptableOrUnknown(data['id_case']!, _idCaseMeta),
      );
    } else if (isInserting) {
      context.missing(_idCaseMeta);
    }
    if (data.containsKey('id_sana')) {
      context.handle(
        _idSanaMeta,
        idSana.isAcceptableOrUnknown(data['id_sana']!, _idSanaMeta),
      );
    } else if (isInserting) {
      context.missing(_idSanaMeta);
    }
    if (data.containsKey('case_name')) {
      context.handle(
        _caseNameMeta,
        caseName.isAcceptableOrUnknown(data['case_name']!, _caseNameMeta),
      );
    } else if (isInserting) {
      context.missing(_caseNameMeta);
    }
    if (data.containsKey('id_row')) {
      context.handle(
        _idRowMeta,
        idRow.isAcceptableOrUnknown(data['id_row']!, _idRowMeta),
      );
    } else if (isInserting) {
      context.missing(_idRowMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idCase, idSana};
  @override
  RowCasesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RowCasesTableData(
      idCase: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_case'],
      )!,
      idSana: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_sana'],
      )!,
      caseName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}case_name'],
      )!,
      idRow: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_row'],
      )!,
    );
  }

  @override
  $RowCasesTableTable createAlias(String alias) {
    return $RowCasesTableTable(attachedDatabase, alias);
  }
}

class RowCasesTableData extends DataClass
    implements Insertable<RowCasesTableData> {
  final int idCase;
  final int idSana;
  final String caseName;
  final int idRow;
  const RowCasesTableData({
    required this.idCase,
    required this.idSana,
    required this.caseName,
    required this.idRow,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_case'] = Variable<int>(idCase);
    map['id_sana'] = Variable<int>(idSana);
    map['case_name'] = Variable<String>(caseName);
    map['id_row'] = Variable<int>(idRow);
    return map;
  }

  RowCasesTableCompanion toCompanion(bool nullToAbsent) {
    return RowCasesTableCompanion(
      idCase: Value(idCase),
      idSana: Value(idSana),
      caseName: Value(caseName),
      idRow: Value(idRow),
    );
  }

  factory RowCasesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RowCasesTableData(
      idCase: serializer.fromJson<int>(json['idCase']),
      idSana: serializer.fromJson<int>(json['idSana']),
      caseName: serializer.fromJson<String>(json['caseName']),
      idRow: serializer.fromJson<int>(json['idRow']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idCase': serializer.toJson<int>(idCase),
      'idSana': serializer.toJson<int>(idSana),
      'caseName': serializer.toJson<String>(caseName),
      'idRow': serializer.toJson<int>(idRow),
    };
  }

  RowCasesTableData copyWith({
    int? idCase,
    int? idSana,
    String? caseName,
    int? idRow,
  }) => RowCasesTableData(
    idCase: idCase ?? this.idCase,
    idSana: idSana ?? this.idSana,
    caseName: caseName ?? this.caseName,
    idRow: idRow ?? this.idRow,
  );
  RowCasesTableData copyWithCompanion(RowCasesTableCompanion data) {
    return RowCasesTableData(
      idCase: data.idCase.present ? data.idCase.value : this.idCase,
      idSana: data.idSana.present ? data.idSana.value : this.idSana,
      caseName: data.caseName.present ? data.caseName.value : this.caseName,
      idRow: data.idRow.present ? data.idRow.value : this.idRow,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RowCasesTableData(')
          ..write('idCase: $idCase, ')
          ..write('idSana: $idSana, ')
          ..write('caseName: $caseName, ')
          ..write('idRow: $idRow')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idCase, idSana, caseName, idRow);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RowCasesTableData &&
          other.idCase == this.idCase &&
          other.idSana == this.idSana &&
          other.caseName == this.caseName &&
          other.idRow == this.idRow);
}

class RowCasesTableCompanion extends UpdateCompanion<RowCasesTableData> {
  final Value<int> idCase;
  final Value<int> idSana;
  final Value<String> caseName;
  final Value<int> idRow;
  final Value<int> rowid;
  const RowCasesTableCompanion({
    this.idCase = const Value.absent(),
    this.idSana = const Value.absent(),
    this.caseName = const Value.absent(),
    this.idRow = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RowCasesTableCompanion.insert({
    required int idCase,
    required int idSana,
    required String caseName,
    required int idRow,
    this.rowid = const Value.absent(),
  }) : idCase = Value(idCase),
       idSana = Value(idSana),
       caseName = Value(caseName),
       idRow = Value(idRow);
  static Insertable<RowCasesTableData> custom({
    Expression<int>? idCase,
    Expression<int>? idSana,
    Expression<String>? caseName,
    Expression<int>? idRow,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idCase != null) 'id_case': idCase,
      if (idSana != null) 'id_sana': idSana,
      if (caseName != null) 'case_name': caseName,
      if (idRow != null) 'id_row': idRow,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RowCasesTableCompanion copyWith({
    Value<int>? idCase,
    Value<int>? idSana,
    Value<String>? caseName,
    Value<int>? idRow,
    Value<int>? rowid,
  }) {
    return RowCasesTableCompanion(
      idCase: idCase ?? this.idCase,
      idSana: idSana ?? this.idSana,
      caseName: caseName ?? this.caseName,
      idRow: idRow ?? this.idRow,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idCase.present) {
      map['id_case'] = Variable<int>(idCase.value);
    }
    if (idSana.present) {
      map['id_sana'] = Variable<int>(idSana.value);
    }
    if (caseName.present) {
      map['case_name'] = Variable<String>(caseName.value);
    }
    if (idRow.present) {
      map['id_row'] = Variable<int>(idRow.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RowCasesTableCompanion(')
          ..write('idCase: $idCase, ')
          ..write('idSana: $idSana, ')
          ..write('caseName: $caseName, ')
          ..write('idRow: $idRow, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SchoolsTableTable extends SchoolsTable
    with TableInfo<$SchoolsTableTable, SchoolsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SchoolsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSchoolMeta = const VerificationMeta(
    'idSchool',
  );
  @override
  late final GeneratedColumn<int> idSchool = GeneratedColumn<int>(
    'id_school',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _schoolNameMeta = const VerificationMeta(
    'schoolName',
  );
  @override
  late final GeneratedColumn<String> schoolName = GeneratedColumn<String>(
    'school_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idCaseMeta = const VerificationMeta('idCase');
  @override
  late final GeneratedColumn<int> idCase = GeneratedColumn<int>(
    'id_case',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _caseNameMeta = const VerificationMeta(
    'caseName',
  );
  @override
  late final GeneratedColumn<String> caseName = GeneratedColumn<String>(
    'case_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _englishSchoolMeta = const VerificationMeta(
    'englishSchool',
  );
  @override
  late final GeneratedColumn<String> englishSchool = GeneratedColumn<String>(
    'english_school',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    idSchool,
    schoolName,
    idCase,
    caseName,
    englishSchool,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'schools_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SchoolsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_school')) {
      context.handle(
        _idSchoolMeta,
        idSchool.isAcceptableOrUnknown(data['id_school']!, _idSchoolMeta),
      );
    }
    if (data.containsKey('school_name')) {
      context.handle(
        _schoolNameMeta,
        schoolName.isAcceptableOrUnknown(data['school_name']!, _schoolNameMeta),
      );
    } else if (isInserting) {
      context.missing(_schoolNameMeta);
    }
    if (data.containsKey('id_case')) {
      context.handle(
        _idCaseMeta,
        idCase.isAcceptableOrUnknown(data['id_case']!, _idCaseMeta),
      );
    } else if (isInserting) {
      context.missing(_idCaseMeta);
    }
    if (data.containsKey('case_name')) {
      context.handle(
        _caseNameMeta,
        caseName.isAcceptableOrUnknown(data['case_name']!, _caseNameMeta),
      );
    }
    if (data.containsKey('english_school')) {
      context.handle(
        _englishSchoolMeta,
        englishSchool.isAcceptableOrUnknown(
          data['english_school']!,
          _englishSchoolMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSchool};
  @override
  SchoolsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SchoolsTableData(
      idSchool: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_school'],
      )!,
      schoolName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}school_name'],
      )!,
      idCase: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_case'],
      )!,
      caseName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}case_name'],
      ),
      englishSchool: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}english_school'],
      ),
    );
  }

  @override
  $SchoolsTableTable createAlias(String alias) {
    return $SchoolsTableTable(attachedDatabase, alias);
  }
}

class SchoolsTableData extends DataClass
    implements Insertable<SchoolsTableData> {
  final int idSchool;
  final String schoolName;
  final int idCase;
  final String? caseName;
  final String? englishSchool;
  const SchoolsTableData({
    required this.idSchool,
    required this.schoolName,
    required this.idCase,
    this.caseName,
    this.englishSchool,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_school'] = Variable<int>(idSchool);
    map['school_name'] = Variable<String>(schoolName);
    map['id_case'] = Variable<int>(idCase);
    if (!nullToAbsent || caseName != null) {
      map['case_name'] = Variable<String>(caseName);
    }
    if (!nullToAbsent || englishSchool != null) {
      map['english_school'] = Variable<String>(englishSchool);
    }
    return map;
  }

  SchoolsTableCompanion toCompanion(bool nullToAbsent) {
    return SchoolsTableCompanion(
      idSchool: Value(idSchool),
      schoolName: Value(schoolName),
      idCase: Value(idCase),
      caseName: caseName == null && nullToAbsent
          ? const Value.absent()
          : Value(caseName),
      englishSchool: englishSchool == null && nullToAbsent
          ? const Value.absent()
          : Value(englishSchool),
    );
  }

  factory SchoolsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SchoolsTableData(
      idSchool: serializer.fromJson<int>(json['idSchool']),
      schoolName: serializer.fromJson<String>(json['schoolName']),
      idCase: serializer.fromJson<int>(json['idCase']),
      caseName: serializer.fromJson<String?>(json['caseName']),
      englishSchool: serializer.fromJson<String?>(json['englishSchool']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSchool': serializer.toJson<int>(idSchool),
      'schoolName': serializer.toJson<String>(schoolName),
      'idCase': serializer.toJson<int>(idCase),
      'caseName': serializer.toJson<String?>(caseName),
      'englishSchool': serializer.toJson<String?>(englishSchool),
    };
  }

  SchoolsTableData copyWith({
    int? idSchool,
    String? schoolName,
    int? idCase,
    Value<String?> caseName = const Value.absent(),
    Value<String?> englishSchool = const Value.absent(),
  }) => SchoolsTableData(
    idSchool: idSchool ?? this.idSchool,
    schoolName: schoolName ?? this.schoolName,
    idCase: idCase ?? this.idCase,
    caseName: caseName.present ? caseName.value : this.caseName,
    englishSchool: englishSchool.present
        ? englishSchool.value
        : this.englishSchool,
  );
  SchoolsTableData copyWithCompanion(SchoolsTableCompanion data) {
    return SchoolsTableData(
      idSchool: data.idSchool.present ? data.idSchool.value : this.idSchool,
      schoolName: data.schoolName.present
          ? data.schoolName.value
          : this.schoolName,
      idCase: data.idCase.present ? data.idCase.value : this.idCase,
      caseName: data.caseName.present ? data.caseName.value : this.caseName,
      englishSchool: data.englishSchool.present
          ? data.englishSchool.value
          : this.englishSchool,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SchoolsTableData(')
          ..write('idSchool: $idSchool, ')
          ..write('schoolName: $schoolName, ')
          ..write('idCase: $idCase, ')
          ..write('caseName: $caseName, ')
          ..write('englishSchool: $englishSchool')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(idSchool, schoolName, idCase, caseName, englishSchool);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SchoolsTableData &&
          other.idSchool == this.idSchool &&
          other.schoolName == this.schoolName &&
          other.idCase == this.idCase &&
          other.caseName == this.caseName &&
          other.englishSchool == this.englishSchool);
}

class SchoolsTableCompanion extends UpdateCompanion<SchoolsTableData> {
  final Value<int> idSchool;
  final Value<String> schoolName;
  final Value<int> idCase;
  final Value<String?> caseName;
  final Value<String?> englishSchool;
  const SchoolsTableCompanion({
    this.idSchool = const Value.absent(),
    this.schoolName = const Value.absent(),
    this.idCase = const Value.absent(),
    this.caseName = const Value.absent(),
    this.englishSchool = const Value.absent(),
  });
  SchoolsTableCompanion.insert({
    this.idSchool = const Value.absent(),
    required String schoolName,
    required int idCase,
    this.caseName = const Value.absent(),
    this.englishSchool = const Value.absent(),
  }) : schoolName = Value(schoolName),
       idCase = Value(idCase);
  static Insertable<SchoolsTableData> custom({
    Expression<int>? idSchool,
    Expression<String>? schoolName,
    Expression<int>? idCase,
    Expression<String>? caseName,
    Expression<String>? englishSchool,
  }) {
    return RawValuesInsertable({
      if (idSchool != null) 'id_school': idSchool,
      if (schoolName != null) 'school_name': schoolName,
      if (idCase != null) 'id_case': idCase,
      if (caseName != null) 'case_name': caseName,
      if (englishSchool != null) 'english_school': englishSchool,
    });
  }

  SchoolsTableCompanion copyWith({
    Value<int>? idSchool,
    Value<String>? schoolName,
    Value<int>? idCase,
    Value<String?>? caseName,
    Value<String?>? englishSchool,
  }) {
    return SchoolsTableCompanion(
      idSchool: idSchool ?? this.idSchool,
      schoolName: schoolName ?? this.schoolName,
      idCase: idCase ?? this.idCase,
      caseName: caseName ?? this.caseName,
      englishSchool: englishSchool ?? this.englishSchool,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSchool.present) {
      map['id_school'] = Variable<int>(idSchool.value);
    }
    if (schoolName.present) {
      map['school_name'] = Variable<String>(schoolName.value);
    }
    if (idCase.present) {
      map['id_case'] = Variable<int>(idCase.value);
    }
    if (caseName.present) {
      map['case_name'] = Variable<String>(caseName.value);
    }
    if (englishSchool.present) {
      map['english_school'] = Variable<String>(englishSchool.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchoolsTableCompanion(')
          ..write('idSchool: $idSchool, ')
          ..write('schoolName: $schoolName, ')
          ..write('idCase: $idCase, ')
          ..write('caseName: $caseName, ')
          ..write('englishSchool: $englishSchool')
          ..write(')'))
        .toString();
  }
}

class $StudentNamesTableTable extends StudentNamesTable
    with TableInfo<$StudentNamesTableTable, StudentNamesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentNamesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _stuIdMeta = const VerificationMeta('stuId');
  @override
  late final GeneratedColumn<int> stuId = GeneratedColumn<int>(
    'stu_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _pfMeta = const VerificationMeta('pf');
  @override
  late final GeneratedColumn<String> pf = GeneratedColumn<String>(
    'pf',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idSanaMeta = const VerificationMeta('idSana');
  @override
  late final GeneratedColumn<int> idSana = GeneratedColumn<int>(
    'id_sana',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sanas_table (id_sana)',
    ),
  );
  static const VerificationMeta _idEdaraMeta = const VerificationMeta(
    'idEdara',
  );
  @override
  late final GeneratedColumn<int> idEdara = GeneratedColumn<int>(
    'id_edara',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES edaras_table (id_edara)',
    ),
  );
  static const VerificationMeta _idRowMeta = const VerificationMeta('idRow');
  @override
  late final GeneratedColumn<int> idRow = GeneratedColumn<int>(
    'id_row',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idSchoolMeta = const VerificationMeta(
    'idSchool',
  );
  @override
  late final GeneratedColumn<int> idSchool = GeneratedColumn<int>(
    'id_school',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES schools_table (id_school)',
    ),
  );
  static const VerificationMeta _idCaseMeta = const VerificationMeta('idCase');
  @override
  late final GeneratedColumn<int> idCase = GeneratedColumn<int>(
    'id_case',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
    'total',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _natMeta = const VerificationMeta('nat');
  @override
  late final GeneratedColumn<String> nat = GeneratedColumn<String>(
    'nat',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 14,
      maxTextLength: 14,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noMeta = const VerificationMeta('no');
  @override
  late final GeneratedColumn<String> no = GeneratedColumn<String>(
    'no',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _systemTypeMeta = const VerificationMeta(
    'systemType',
  );
  @override
  late final GeneratedColumn<String> systemType = GeneratedColumn<String>(
    'system_type',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _roundMeta = const VerificationMeta('round');
  @override
  late final GeneratedColumn<String> round = GeneratedColumn<String>(
    'round',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _maxTotalMeta = const VerificationMeta(
    'maxTotal',
  );
  @override
  late final GeneratedColumn<double> maxTotal = GeneratedColumn<double>(
    'max_total',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _translationMeta = const VerificationMeta(
    'translation',
  );
  @override
  late final GeneratedColumn<String> translation = GeneratedColumn<String>(
    'translation',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    stuId,
    pf,
    idSana,
    idEdara,
    idRow,
    idSchool,
    idCase,
    total,
    nat,
    no,
    name,
    systemType,
    round,
    maxTotal,
    translation,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'student_names_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<StudentNamesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('stu_id')) {
      context.handle(
        _stuIdMeta,
        stuId.isAcceptableOrUnknown(data['stu_id']!, _stuIdMeta),
      );
    }
    if (data.containsKey('pf')) {
      context.handle(_pfMeta, pf.isAcceptableOrUnknown(data['pf']!, _pfMeta));
    } else if (isInserting) {
      context.missing(_pfMeta);
    }
    if (data.containsKey('id_sana')) {
      context.handle(
        _idSanaMeta,
        idSana.isAcceptableOrUnknown(data['id_sana']!, _idSanaMeta),
      );
    } else if (isInserting) {
      context.missing(_idSanaMeta);
    }
    if (data.containsKey('id_edara')) {
      context.handle(
        _idEdaraMeta,
        idEdara.isAcceptableOrUnknown(data['id_edara']!, _idEdaraMeta),
      );
    } else if (isInserting) {
      context.missing(_idEdaraMeta);
    }
    if (data.containsKey('id_row')) {
      context.handle(
        _idRowMeta,
        idRow.isAcceptableOrUnknown(data['id_row']!, _idRowMeta),
      );
    } else if (isInserting) {
      context.missing(_idRowMeta);
    }
    if (data.containsKey('id_school')) {
      context.handle(
        _idSchoolMeta,
        idSchool.isAcceptableOrUnknown(data['id_school']!, _idSchoolMeta),
      );
    } else if (isInserting) {
      context.missing(_idSchoolMeta);
    }
    if (data.containsKey('id_case')) {
      context.handle(
        _idCaseMeta,
        idCase.isAcceptableOrUnknown(data['id_case']!, _idCaseMeta),
      );
    } else if (isInserting) {
      context.missing(_idCaseMeta);
    }
    if (data.containsKey('total')) {
      context.handle(
        _totalMeta,
        total.isAcceptableOrUnknown(data['total']!, _totalMeta),
      );
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    if (data.containsKey('nat')) {
      context.handle(
        _natMeta,
        nat.isAcceptableOrUnknown(data['nat']!, _natMeta),
      );
    }
    if (data.containsKey('no')) {
      context.handle(_noMeta, no.isAcceptableOrUnknown(data['no']!, _noMeta));
    } else if (isInserting) {
      context.missing(_noMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('system_type')) {
      context.handle(
        _systemTypeMeta,
        systemType.isAcceptableOrUnknown(data['system_type']!, _systemTypeMeta),
      );
    }
    if (data.containsKey('round')) {
      context.handle(
        _roundMeta,
        round.isAcceptableOrUnknown(data['round']!, _roundMeta),
      );
    }
    if (data.containsKey('max_total')) {
      context.handle(
        _maxTotalMeta,
        maxTotal.isAcceptableOrUnknown(data['max_total']!, _maxTotalMeta),
      );
    }
    if (data.containsKey('translation')) {
      context.handle(
        _translationMeta,
        translation.isAcceptableOrUnknown(
          data['translation']!,
          _translationMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {stuId};
  @override
  StudentNamesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentNamesTableData(
      stuId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stu_id'],
      )!,
      pf: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pf'],
      )!,
      idSana: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_sana'],
      )!,
      idEdara: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_edara'],
      )!,
      idRow: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_row'],
      )!,
      idSchool: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_school'],
      )!,
      idCase: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_case'],
      )!,
      total: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}total'],
      )!,
      nat: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nat'],
      ),
      no: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}no'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      systemType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}system_type'],
      ),
      round: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}round'],
      ),
      maxTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_total'],
      ),
      translation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation'],
      ),
    );
  }

  @override
  $StudentNamesTableTable createAlias(String alias) {
    return $StudentNamesTableTable(attachedDatabase, alias);
  }
}

class StudentNamesTableData extends DataClass
    implements Insertable<StudentNamesTableData> {
  final int stuId;
  final String pf;
  final int idSana;
  final int idEdara;
  final int idRow;
  final int idSchool;
  final int idCase;
  final double total;
  final String? nat;
  final String no;
  final String name;
  final String? systemType;
  final String? round;
  final double? maxTotal;
  final String? translation;
  const StudentNamesTableData({
    required this.stuId,
    required this.pf,
    required this.idSana,
    required this.idEdara,
    required this.idRow,
    required this.idSchool,
    required this.idCase,
    required this.total,
    this.nat,
    required this.no,
    required this.name,
    this.systemType,
    this.round,
    this.maxTotal,
    this.translation,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['stu_id'] = Variable<int>(stuId);
    map['pf'] = Variable<String>(pf);
    map['id_sana'] = Variable<int>(idSana);
    map['id_edara'] = Variable<int>(idEdara);
    map['id_row'] = Variable<int>(idRow);
    map['id_school'] = Variable<int>(idSchool);
    map['id_case'] = Variable<int>(idCase);
    map['total'] = Variable<double>(total);
    if (!nullToAbsent || nat != null) {
      map['nat'] = Variable<String>(nat);
    }
    map['no'] = Variable<String>(no);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || systemType != null) {
      map['system_type'] = Variable<String>(systemType);
    }
    if (!nullToAbsent || round != null) {
      map['round'] = Variable<String>(round);
    }
    if (!nullToAbsent || maxTotal != null) {
      map['max_total'] = Variable<double>(maxTotal);
    }
    if (!nullToAbsent || translation != null) {
      map['translation'] = Variable<String>(translation);
    }
    return map;
  }

  StudentNamesTableCompanion toCompanion(bool nullToAbsent) {
    return StudentNamesTableCompanion(
      stuId: Value(stuId),
      pf: Value(pf),
      idSana: Value(idSana),
      idEdara: Value(idEdara),
      idRow: Value(idRow),
      idSchool: Value(idSchool),
      idCase: Value(idCase),
      total: Value(total),
      nat: nat == null && nullToAbsent ? const Value.absent() : Value(nat),
      no: Value(no),
      name: Value(name),
      systemType: systemType == null && nullToAbsent
          ? const Value.absent()
          : Value(systemType),
      round: round == null && nullToAbsent
          ? const Value.absent()
          : Value(round),
      maxTotal: maxTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(maxTotal),
      translation: translation == null && nullToAbsent
          ? const Value.absent()
          : Value(translation),
    );
  }

  factory StudentNamesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentNamesTableData(
      stuId: serializer.fromJson<int>(json['stuId']),
      pf: serializer.fromJson<String>(json['pf']),
      idSana: serializer.fromJson<int>(json['idSana']),
      idEdara: serializer.fromJson<int>(json['idEdara']),
      idRow: serializer.fromJson<int>(json['idRow']),
      idSchool: serializer.fromJson<int>(json['idSchool']),
      idCase: serializer.fromJson<int>(json['idCase']),
      total: serializer.fromJson<double>(json['total']),
      nat: serializer.fromJson<String?>(json['nat']),
      no: serializer.fromJson<String>(json['no']),
      name: serializer.fromJson<String>(json['name']),
      systemType: serializer.fromJson<String?>(json['systemType']),
      round: serializer.fromJson<String?>(json['round']),
      maxTotal: serializer.fromJson<double?>(json['maxTotal']),
      translation: serializer.fromJson<String?>(json['translation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'stuId': serializer.toJson<int>(stuId),
      'pf': serializer.toJson<String>(pf),
      'idSana': serializer.toJson<int>(idSana),
      'idEdara': serializer.toJson<int>(idEdara),
      'idRow': serializer.toJson<int>(idRow),
      'idSchool': serializer.toJson<int>(idSchool),
      'idCase': serializer.toJson<int>(idCase),
      'total': serializer.toJson<double>(total),
      'nat': serializer.toJson<String?>(nat),
      'no': serializer.toJson<String>(no),
      'name': serializer.toJson<String>(name),
      'systemType': serializer.toJson<String?>(systemType),
      'round': serializer.toJson<String?>(round),
      'maxTotal': serializer.toJson<double?>(maxTotal),
      'translation': serializer.toJson<String?>(translation),
    };
  }

  StudentNamesTableData copyWith({
    int? stuId,
    String? pf,
    int? idSana,
    int? idEdara,
    int? idRow,
    int? idSchool,
    int? idCase,
    double? total,
    Value<String?> nat = const Value.absent(),
    String? no,
    String? name,
    Value<String?> systemType = const Value.absent(),
    Value<String?> round = const Value.absent(),
    Value<double?> maxTotal = const Value.absent(),
    Value<String?> translation = const Value.absent(),
  }) => StudentNamesTableData(
    stuId: stuId ?? this.stuId,
    pf: pf ?? this.pf,
    idSana: idSana ?? this.idSana,
    idEdara: idEdara ?? this.idEdara,
    idRow: idRow ?? this.idRow,
    idSchool: idSchool ?? this.idSchool,
    idCase: idCase ?? this.idCase,
    total: total ?? this.total,
    nat: nat.present ? nat.value : this.nat,
    no: no ?? this.no,
    name: name ?? this.name,
    systemType: systemType.present ? systemType.value : this.systemType,
    round: round.present ? round.value : this.round,
    maxTotal: maxTotal.present ? maxTotal.value : this.maxTotal,
    translation: translation.present ? translation.value : this.translation,
  );
  StudentNamesTableData copyWithCompanion(StudentNamesTableCompanion data) {
    return StudentNamesTableData(
      stuId: data.stuId.present ? data.stuId.value : this.stuId,
      pf: data.pf.present ? data.pf.value : this.pf,
      idSana: data.idSana.present ? data.idSana.value : this.idSana,
      idEdara: data.idEdara.present ? data.idEdara.value : this.idEdara,
      idRow: data.idRow.present ? data.idRow.value : this.idRow,
      idSchool: data.idSchool.present ? data.idSchool.value : this.idSchool,
      idCase: data.idCase.present ? data.idCase.value : this.idCase,
      total: data.total.present ? data.total.value : this.total,
      nat: data.nat.present ? data.nat.value : this.nat,
      no: data.no.present ? data.no.value : this.no,
      name: data.name.present ? data.name.value : this.name,
      systemType: data.systemType.present
          ? data.systemType.value
          : this.systemType,
      round: data.round.present ? data.round.value : this.round,
      maxTotal: data.maxTotal.present ? data.maxTotal.value : this.maxTotal,
      translation: data.translation.present
          ? data.translation.value
          : this.translation,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StudentNamesTableData(')
          ..write('stuId: $stuId, ')
          ..write('pf: $pf, ')
          ..write('idSana: $idSana, ')
          ..write('idEdara: $idEdara, ')
          ..write('idRow: $idRow, ')
          ..write('idSchool: $idSchool, ')
          ..write('idCase: $idCase, ')
          ..write('total: $total, ')
          ..write('nat: $nat, ')
          ..write('no: $no, ')
          ..write('name: $name, ')
          ..write('systemType: $systemType, ')
          ..write('round: $round, ')
          ..write('maxTotal: $maxTotal, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    stuId,
    pf,
    idSana,
    idEdara,
    idRow,
    idSchool,
    idCase,
    total,
    nat,
    no,
    name,
    systemType,
    round,
    maxTotal,
    translation,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentNamesTableData &&
          other.stuId == this.stuId &&
          other.pf == this.pf &&
          other.idSana == this.idSana &&
          other.idEdara == this.idEdara &&
          other.idRow == this.idRow &&
          other.idSchool == this.idSchool &&
          other.idCase == this.idCase &&
          other.total == this.total &&
          other.nat == this.nat &&
          other.no == this.no &&
          other.name == this.name &&
          other.systemType == this.systemType &&
          other.round == this.round &&
          other.maxTotal == this.maxTotal &&
          other.translation == this.translation);
}

class StudentNamesTableCompanion
    extends UpdateCompanion<StudentNamesTableData> {
  final Value<int> stuId;
  final Value<String> pf;
  final Value<int> idSana;
  final Value<int> idEdara;
  final Value<int> idRow;
  final Value<int> idSchool;
  final Value<int> idCase;
  final Value<double> total;
  final Value<String?> nat;
  final Value<String> no;
  final Value<String> name;
  final Value<String?> systemType;
  final Value<String?> round;
  final Value<double?> maxTotal;
  final Value<String?> translation;
  const StudentNamesTableCompanion({
    this.stuId = const Value.absent(),
    this.pf = const Value.absent(),
    this.idSana = const Value.absent(),
    this.idEdara = const Value.absent(),
    this.idRow = const Value.absent(),
    this.idSchool = const Value.absent(),
    this.idCase = const Value.absent(),
    this.total = const Value.absent(),
    this.nat = const Value.absent(),
    this.no = const Value.absent(),
    this.name = const Value.absent(),
    this.systemType = const Value.absent(),
    this.round = const Value.absent(),
    this.maxTotal = const Value.absent(),
    this.translation = const Value.absent(),
  });
  StudentNamesTableCompanion.insert({
    this.stuId = const Value.absent(),
    required String pf,
    required int idSana,
    required int idEdara,
    required int idRow,
    required int idSchool,
    required int idCase,
    required double total,
    this.nat = const Value.absent(),
    required String no,
    required String name,
    this.systemType = const Value.absent(),
    this.round = const Value.absent(),
    this.maxTotal = const Value.absent(),
    this.translation = const Value.absent(),
  }) : pf = Value(pf),
       idSana = Value(idSana),
       idEdara = Value(idEdara),
       idRow = Value(idRow),
       idSchool = Value(idSchool),
       idCase = Value(idCase),
       total = Value(total),
       no = Value(no),
       name = Value(name);
  static Insertable<StudentNamesTableData> custom({
    Expression<int>? stuId,
    Expression<String>? pf,
    Expression<int>? idSana,
    Expression<int>? idEdara,
    Expression<int>? idRow,
    Expression<int>? idSchool,
    Expression<int>? idCase,
    Expression<double>? total,
    Expression<String>? nat,
    Expression<String>? no,
    Expression<String>? name,
    Expression<String>? systemType,
    Expression<String>? round,
    Expression<double>? maxTotal,
    Expression<String>? translation,
  }) {
    return RawValuesInsertable({
      if (stuId != null) 'stu_id': stuId,
      if (pf != null) 'pf': pf,
      if (idSana != null) 'id_sana': idSana,
      if (idEdara != null) 'id_edara': idEdara,
      if (idRow != null) 'id_row': idRow,
      if (idSchool != null) 'id_school': idSchool,
      if (idCase != null) 'id_case': idCase,
      if (total != null) 'total': total,
      if (nat != null) 'nat': nat,
      if (no != null) 'no': no,
      if (name != null) 'name': name,
      if (systemType != null) 'system_type': systemType,
      if (round != null) 'round': round,
      if (maxTotal != null) 'max_total': maxTotal,
      if (translation != null) 'translation': translation,
    });
  }

  StudentNamesTableCompanion copyWith({
    Value<int>? stuId,
    Value<String>? pf,
    Value<int>? idSana,
    Value<int>? idEdara,
    Value<int>? idRow,
    Value<int>? idSchool,
    Value<int>? idCase,
    Value<double>? total,
    Value<String?>? nat,
    Value<String>? no,
    Value<String>? name,
    Value<String?>? systemType,
    Value<String?>? round,
    Value<double?>? maxTotal,
    Value<String?>? translation,
  }) {
    return StudentNamesTableCompanion(
      stuId: stuId ?? this.stuId,
      pf: pf ?? this.pf,
      idSana: idSana ?? this.idSana,
      idEdara: idEdara ?? this.idEdara,
      idRow: idRow ?? this.idRow,
      idSchool: idSchool ?? this.idSchool,
      idCase: idCase ?? this.idCase,
      total: total ?? this.total,
      nat: nat ?? this.nat,
      no: no ?? this.no,
      name: name ?? this.name,
      systemType: systemType ?? this.systemType,
      round: round ?? this.round,
      maxTotal: maxTotal ?? this.maxTotal,
      translation: translation ?? this.translation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (stuId.present) {
      map['stu_id'] = Variable<int>(stuId.value);
    }
    if (pf.present) {
      map['pf'] = Variable<String>(pf.value);
    }
    if (idSana.present) {
      map['id_sana'] = Variable<int>(idSana.value);
    }
    if (idEdara.present) {
      map['id_edara'] = Variable<int>(idEdara.value);
    }
    if (idRow.present) {
      map['id_row'] = Variable<int>(idRow.value);
    }
    if (idSchool.present) {
      map['id_school'] = Variable<int>(idSchool.value);
    }
    if (idCase.present) {
      map['id_case'] = Variable<int>(idCase.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (nat.present) {
      map['nat'] = Variable<String>(nat.value);
    }
    if (no.present) {
      map['no'] = Variable<String>(no.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (systemType.present) {
      map['system_type'] = Variable<String>(systemType.value);
    }
    if (round.present) {
      map['round'] = Variable<String>(round.value);
    }
    if (maxTotal.present) {
      map['max_total'] = Variable<double>(maxTotal.value);
    }
    if (translation.present) {
      map['translation'] = Variable<String>(translation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentNamesTableCompanion(')
          ..write('stuId: $stuId, ')
          ..write('pf: $pf, ')
          ..write('idSana: $idSana, ')
          ..write('idEdara: $idEdara, ')
          ..write('idRow: $idRow, ')
          ..write('idSchool: $idSchool, ')
          ..write('idCase: $idCase, ')
          ..write('total: $total, ')
          ..write('nat: $nat, ')
          ..write('no: $no, ')
          ..write('name: $name, ')
          ..write('systemType: $systemType, ')
          ..write('round: $round, ')
          ..write('maxTotal: $maxTotal, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }
}

class $SubjectsTableTable extends SubjectsTable
    with TableInfo<$SubjectsTableTable, SubjectsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubjectsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idSubjectMeta = const VerificationMeta(
    'idSubject',
  );
  @override
  late final GeneratedColumn<int> idSubject = GeneratedColumn<int>(
    'id_subject',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idCaseMeta = const VerificationMeta('idCase');
  @override
  late final GeneratedColumn<int> idCase = GeneratedColumn<int>(
    'id_case',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _idSanaMeta = const VerificationMeta('idSana');
  @override
  late final GeneratedColumn<int> idSana = GeneratedColumn<int>(
    'id_sana',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES sanas_table (id_sana)',
    ),
  );
  static const VerificationMeta _caseNameMeta = const VerificationMeta(
    'caseName',
  );
  @override
  late final GeneratedColumn<String> caseName = GeneratedColumn<String>(
    'case_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subSubjectMeta = const VerificationMeta(
    'subSubject',
  );
  @override
  late final GeneratedColumn<String> subSubject = GeneratedColumn<String>(
    'sub_subject',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _subjectNameMeta = const VerificationMeta(
    'subjectName',
  );
  @override
  late final GeneratedColumn<String> subjectName = GeneratedColumn<String>(
    'subject_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maxScoreMeta = const VerificationMeta(
    'maxScore',
  );
  @override
  late final GeneratedColumn<double> maxScore = GeneratedColumn<double>(
    'max_score',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minScoreMeta = const VerificationMeta(
    'minScore',
  );
  @override
  late final GeneratedColumn<double> minScore = GeneratedColumn<double>(
    'min_score',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _translationMeta = const VerificationMeta(
    'translation',
  );
  @override
  late final GeneratedColumn<String> translation = GeneratedColumn<String>(
    'translation',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    idSubject,
    idCase,
    idSana,
    caseName,
    subSubject,
    subjectName,
    maxScore,
    minScore,
    translation,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'subjects_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SubjectsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_subject')) {
      context.handle(
        _idSubjectMeta,
        idSubject.isAcceptableOrUnknown(data['id_subject']!, _idSubjectMeta),
      );
    } else if (isInserting) {
      context.missing(_idSubjectMeta);
    }
    if (data.containsKey('id_case')) {
      context.handle(
        _idCaseMeta,
        idCase.isAcceptableOrUnknown(data['id_case']!, _idCaseMeta),
      );
    } else if (isInserting) {
      context.missing(_idCaseMeta);
    }
    if (data.containsKey('id_sana')) {
      context.handle(
        _idSanaMeta,
        idSana.isAcceptableOrUnknown(data['id_sana']!, _idSanaMeta),
      );
    } else if (isInserting) {
      context.missing(_idSanaMeta);
    }
    if (data.containsKey('case_name')) {
      context.handle(
        _caseNameMeta,
        caseName.isAcceptableOrUnknown(data['case_name']!, _caseNameMeta),
      );
    } else if (isInserting) {
      context.missing(_caseNameMeta);
    }
    if (data.containsKey('sub_subject')) {
      context.handle(
        _subSubjectMeta,
        subSubject.isAcceptableOrUnknown(data['sub_subject']!, _subSubjectMeta),
      );
    }
    if (data.containsKey('subject_name')) {
      context.handle(
        _subjectNameMeta,
        subjectName.isAcceptableOrUnknown(
          data['subject_name']!,
          _subjectNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_subjectNameMeta);
    }
    if (data.containsKey('max_score')) {
      context.handle(
        _maxScoreMeta,
        maxScore.isAcceptableOrUnknown(data['max_score']!, _maxScoreMeta),
      );
    } else if (isInserting) {
      context.missing(_maxScoreMeta);
    }
    if (data.containsKey('min_score')) {
      context.handle(
        _minScoreMeta,
        minScore.isAcceptableOrUnknown(data['min_score']!, _minScoreMeta),
      );
    } else if (isInserting) {
      context.missing(_minScoreMeta);
    }
    if (data.containsKey('translation')) {
      context.handle(
        _translationMeta,
        translation.isAcceptableOrUnknown(
          data['translation']!,
          _translationMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idSubject, idSana};
  @override
  SubjectsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubjectsTableData(
      idSubject: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_subject'],
      )!,
      idCase: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_case'],
      )!,
      idSana: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_sana'],
      )!,
      caseName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}case_name'],
      )!,
      subSubject: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sub_subject'],
      ),
      subjectName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subject_name'],
      )!,
      maxScore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_score'],
      )!,
      minScore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_score'],
      )!,
      translation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation'],
      ),
    );
  }

  @override
  $SubjectsTableTable createAlias(String alias) {
    return $SubjectsTableTable(attachedDatabase, alias);
  }
}

class SubjectsTableData extends DataClass
    implements Insertable<SubjectsTableData> {
  final int idSubject;
  final int idCase;
  final int idSana;
  final String caseName;
  final String? subSubject;
  final String subjectName;
  final double maxScore;
  final double minScore;
  final String? translation;
  const SubjectsTableData({
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_subject'] = Variable<int>(idSubject);
    map['id_case'] = Variable<int>(idCase);
    map['id_sana'] = Variable<int>(idSana);
    map['case_name'] = Variable<String>(caseName);
    if (!nullToAbsent || subSubject != null) {
      map['sub_subject'] = Variable<String>(subSubject);
    }
    map['subject_name'] = Variable<String>(subjectName);
    map['max_score'] = Variable<double>(maxScore);
    map['min_score'] = Variable<double>(minScore);
    if (!nullToAbsent || translation != null) {
      map['translation'] = Variable<String>(translation);
    }
    return map;
  }

  SubjectsTableCompanion toCompanion(bool nullToAbsent) {
    return SubjectsTableCompanion(
      idSubject: Value(idSubject),
      idCase: Value(idCase),
      idSana: Value(idSana),
      caseName: Value(caseName),
      subSubject: subSubject == null && nullToAbsent
          ? const Value.absent()
          : Value(subSubject),
      subjectName: Value(subjectName),
      maxScore: Value(maxScore),
      minScore: Value(minScore),
      translation: translation == null && nullToAbsent
          ? const Value.absent()
          : Value(translation),
    );
  }

  factory SubjectsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SubjectsTableData(
      idSubject: serializer.fromJson<int>(json['idSubject']),
      idCase: serializer.fromJson<int>(json['idCase']),
      idSana: serializer.fromJson<int>(json['idSana']),
      caseName: serializer.fromJson<String>(json['caseName']),
      subSubject: serializer.fromJson<String?>(json['subSubject']),
      subjectName: serializer.fromJson<String>(json['subjectName']),
      maxScore: serializer.fromJson<double>(json['maxScore']),
      minScore: serializer.fromJson<double>(json['minScore']),
      translation: serializer.fromJson<String?>(json['translation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idSubject': serializer.toJson<int>(idSubject),
      'idCase': serializer.toJson<int>(idCase),
      'idSana': serializer.toJson<int>(idSana),
      'caseName': serializer.toJson<String>(caseName),
      'subSubject': serializer.toJson<String?>(subSubject),
      'subjectName': serializer.toJson<String>(subjectName),
      'maxScore': serializer.toJson<double>(maxScore),
      'minScore': serializer.toJson<double>(minScore),
      'translation': serializer.toJson<String?>(translation),
    };
  }

  SubjectsTableData copyWith({
    int? idSubject,
    int? idCase,
    int? idSana,
    String? caseName,
    Value<String?> subSubject = const Value.absent(),
    String? subjectName,
    double? maxScore,
    double? minScore,
    Value<String?> translation = const Value.absent(),
  }) => SubjectsTableData(
    idSubject: idSubject ?? this.idSubject,
    idCase: idCase ?? this.idCase,
    idSana: idSana ?? this.idSana,
    caseName: caseName ?? this.caseName,
    subSubject: subSubject.present ? subSubject.value : this.subSubject,
    subjectName: subjectName ?? this.subjectName,
    maxScore: maxScore ?? this.maxScore,
    minScore: minScore ?? this.minScore,
    translation: translation.present ? translation.value : this.translation,
  );
  SubjectsTableData copyWithCompanion(SubjectsTableCompanion data) {
    return SubjectsTableData(
      idSubject: data.idSubject.present ? data.idSubject.value : this.idSubject,
      idCase: data.idCase.present ? data.idCase.value : this.idCase,
      idSana: data.idSana.present ? data.idSana.value : this.idSana,
      caseName: data.caseName.present ? data.caseName.value : this.caseName,
      subSubject: data.subSubject.present
          ? data.subSubject.value
          : this.subSubject,
      subjectName: data.subjectName.present
          ? data.subjectName.value
          : this.subjectName,
      maxScore: data.maxScore.present ? data.maxScore.value : this.maxScore,
      minScore: data.minScore.present ? data.minScore.value : this.minScore,
      translation: data.translation.present
          ? data.translation.value
          : this.translation,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SubjectsTableData(')
          ..write('idSubject: $idSubject, ')
          ..write('idCase: $idCase, ')
          ..write('idSana: $idSana, ')
          ..write('caseName: $caseName, ')
          ..write('subSubject: $subSubject, ')
          ..write('subjectName: $subjectName, ')
          ..write('maxScore: $maxScore, ')
          ..write('minScore: $minScore, ')
          ..write('translation: $translation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    idSubject,
    idCase,
    idSana,
    caseName,
    subSubject,
    subjectName,
    maxScore,
    minScore,
    translation,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubjectsTableData &&
          other.idSubject == this.idSubject &&
          other.idCase == this.idCase &&
          other.idSana == this.idSana &&
          other.caseName == this.caseName &&
          other.subSubject == this.subSubject &&
          other.subjectName == this.subjectName &&
          other.maxScore == this.maxScore &&
          other.minScore == this.minScore &&
          other.translation == this.translation);
}

class SubjectsTableCompanion extends UpdateCompanion<SubjectsTableData> {
  final Value<int> idSubject;
  final Value<int> idCase;
  final Value<int> idSana;
  final Value<String> caseName;
  final Value<String?> subSubject;
  final Value<String> subjectName;
  final Value<double> maxScore;
  final Value<double> minScore;
  final Value<String?> translation;
  final Value<int> rowid;
  const SubjectsTableCompanion({
    this.idSubject = const Value.absent(),
    this.idCase = const Value.absent(),
    this.idSana = const Value.absent(),
    this.caseName = const Value.absent(),
    this.subSubject = const Value.absent(),
    this.subjectName = const Value.absent(),
    this.maxScore = const Value.absent(),
    this.minScore = const Value.absent(),
    this.translation = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SubjectsTableCompanion.insert({
    required int idSubject,
    required int idCase,
    required int idSana,
    required String caseName,
    this.subSubject = const Value.absent(),
    required String subjectName,
    required double maxScore,
    required double minScore,
    this.translation = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : idSubject = Value(idSubject),
       idCase = Value(idCase),
       idSana = Value(idSana),
       caseName = Value(caseName),
       subjectName = Value(subjectName),
       maxScore = Value(maxScore),
       minScore = Value(minScore);
  static Insertable<SubjectsTableData> custom({
    Expression<int>? idSubject,
    Expression<int>? idCase,
    Expression<int>? idSana,
    Expression<String>? caseName,
    Expression<String>? subSubject,
    Expression<String>? subjectName,
    Expression<double>? maxScore,
    Expression<double>? minScore,
    Expression<String>? translation,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idSubject != null) 'id_subject': idSubject,
      if (idCase != null) 'id_case': idCase,
      if (idSana != null) 'id_sana': idSana,
      if (caseName != null) 'case_name': caseName,
      if (subSubject != null) 'sub_subject': subSubject,
      if (subjectName != null) 'subject_name': subjectName,
      if (maxScore != null) 'max_score': maxScore,
      if (minScore != null) 'min_score': minScore,
      if (translation != null) 'translation': translation,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SubjectsTableCompanion copyWith({
    Value<int>? idSubject,
    Value<int>? idCase,
    Value<int>? idSana,
    Value<String>? caseName,
    Value<String?>? subSubject,
    Value<String>? subjectName,
    Value<double>? maxScore,
    Value<double>? minScore,
    Value<String?>? translation,
    Value<int>? rowid,
  }) {
    return SubjectsTableCompanion(
      idSubject: idSubject ?? this.idSubject,
      idCase: idCase ?? this.idCase,
      idSana: idSana ?? this.idSana,
      caseName: caseName ?? this.caseName,
      subSubject: subSubject ?? this.subSubject,
      subjectName: subjectName ?? this.subjectName,
      maxScore: maxScore ?? this.maxScore,
      minScore: minScore ?? this.minScore,
      translation: translation ?? this.translation,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idSubject.present) {
      map['id_subject'] = Variable<int>(idSubject.value);
    }
    if (idCase.present) {
      map['id_case'] = Variable<int>(idCase.value);
    }
    if (idSana.present) {
      map['id_sana'] = Variable<int>(idSana.value);
    }
    if (caseName.present) {
      map['case_name'] = Variable<String>(caseName.value);
    }
    if (subSubject.present) {
      map['sub_subject'] = Variable<String>(subSubject.value);
    }
    if (subjectName.present) {
      map['subject_name'] = Variable<String>(subjectName.value);
    }
    if (maxScore.present) {
      map['max_score'] = Variable<double>(maxScore.value);
    }
    if (minScore.present) {
      map['min_score'] = Variable<double>(minScore.value);
    }
    if (translation.present) {
      map['translation'] = Variable<String>(translation.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubjectsTableCompanion(')
          ..write('idSubject: $idSubject, ')
          ..write('idCase: $idCase, ')
          ..write('idSana: $idSana, ')
          ..write('caseName: $caseName, ')
          ..write('subSubject: $subSubject, ')
          ..write('subjectName: $subjectName, ')
          ..write('maxScore: $maxScore, ')
          ..write('minScore: $minScore, ')
          ..write('translation: $translation, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ScoresTableTable extends ScoresTable
    with TableInfo<$ScoresTableTable, ScoresTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScoresTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _stuIdMeta = const VerificationMeta('stuId');
  @override
  late final GeneratedColumn<int> stuId = GeneratedColumn<int>(
    'stu_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES student_names_table (stu_id)',
    ),
  );
  static const VerificationMeta _idSubjectMeta = const VerificationMeta(
    'idSubject',
  );
  @override
  late final GeneratedColumn<int> idSubject = GeneratedColumn<int>(
    'id_subject',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<double> score = GeneratedColumn<double>(
    'score',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [stuId, idSubject, score];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scores_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ScoresTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('stu_id')) {
      context.handle(
        _stuIdMeta,
        stuId.isAcceptableOrUnknown(data['stu_id']!, _stuIdMeta),
      );
    } else if (isInserting) {
      context.missing(_stuIdMeta);
    }
    if (data.containsKey('id_subject')) {
      context.handle(
        _idSubjectMeta,
        idSubject.isAcceptableOrUnknown(data['id_subject']!, _idSubjectMeta),
      );
    } else if (isInserting) {
      context.missing(_idSubjectMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
        _scoreMeta,
        score.isAcceptableOrUnknown(data['score']!, _scoreMeta),
      );
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {stuId, idSubject};
  @override
  ScoresTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ScoresTableData(
      stuId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stu_id'],
      )!,
      idSubject: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id_subject'],
      )!,
      score: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}score'],
      )!,
    );
  }

  @override
  $ScoresTableTable createAlias(String alias) {
    return $ScoresTableTable(attachedDatabase, alias);
  }
}

class ScoresTableData extends DataClass implements Insertable<ScoresTableData> {
  final int stuId;
  final int idSubject;
  final double score;
  const ScoresTableData({
    required this.stuId,
    required this.idSubject,
    required this.score,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['stu_id'] = Variable<int>(stuId);
    map['id_subject'] = Variable<int>(idSubject);
    map['score'] = Variable<double>(score);
    return map;
  }

  ScoresTableCompanion toCompanion(bool nullToAbsent) {
    return ScoresTableCompanion(
      stuId: Value(stuId),
      idSubject: Value(idSubject),
      score: Value(score),
    );
  }

  factory ScoresTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScoresTableData(
      stuId: serializer.fromJson<int>(json['stuId']),
      idSubject: serializer.fromJson<int>(json['idSubject']),
      score: serializer.fromJson<double>(json['score']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'stuId': serializer.toJson<int>(stuId),
      'idSubject': serializer.toJson<int>(idSubject),
      'score': serializer.toJson<double>(score),
    };
  }

  ScoresTableData copyWith({int? stuId, int? idSubject, double? score}) =>
      ScoresTableData(
        stuId: stuId ?? this.stuId,
        idSubject: idSubject ?? this.idSubject,
        score: score ?? this.score,
      );
  ScoresTableData copyWithCompanion(ScoresTableCompanion data) {
    return ScoresTableData(
      stuId: data.stuId.present ? data.stuId.value : this.stuId,
      idSubject: data.idSubject.present ? data.idSubject.value : this.idSubject,
      score: data.score.present ? data.score.value : this.score,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ScoresTableData(')
          ..write('stuId: $stuId, ')
          ..write('idSubject: $idSubject, ')
          ..write('score: $score')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(stuId, idSubject, score);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScoresTableData &&
          other.stuId == this.stuId &&
          other.idSubject == this.idSubject &&
          other.score == this.score);
}

class ScoresTableCompanion extends UpdateCompanion<ScoresTableData> {
  final Value<int> stuId;
  final Value<int> idSubject;
  final Value<double> score;
  final Value<int> rowid;
  const ScoresTableCompanion({
    this.stuId = const Value.absent(),
    this.idSubject = const Value.absent(),
    this.score = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ScoresTableCompanion.insert({
    required int stuId,
    required int idSubject,
    required double score,
    this.rowid = const Value.absent(),
  }) : stuId = Value(stuId),
       idSubject = Value(idSubject),
       score = Value(score);
  static Insertable<ScoresTableData> custom({
    Expression<int>? stuId,
    Expression<int>? idSubject,
    Expression<double>? score,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (stuId != null) 'stu_id': stuId,
      if (idSubject != null) 'id_subject': idSubject,
      if (score != null) 'score': score,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ScoresTableCompanion copyWith({
    Value<int>? stuId,
    Value<int>? idSubject,
    Value<double>? score,
    Value<int>? rowid,
  }) {
    return ScoresTableCompanion(
      stuId: stuId ?? this.stuId,
      idSubject: idSubject ?? this.idSubject,
      score: score ?? this.score,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (stuId.present) {
      map['stu_id'] = Variable<int>(stuId.value);
    }
    if (idSubject.present) {
      map['id_subject'] = Variable<int>(idSubject.value);
    }
    if (score.present) {
      map['score'] = Variable<double>(score.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScoresTableCompanion(')
          ..write('stuId: $stuId, ')
          ..write('idSubject: $idSubject, ')
          ..write('score: $score, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SanasTableTable sanasTable = $SanasTableTable(this);
  late final $EdarasTableTable edarasTable = $EdarasTableTable(this);
  late final $RowsTableTable rowsTable = $RowsTableTable(this);
  late final $RowCasesTableTable rowCasesTable = $RowCasesTableTable(this);
  late final $SchoolsTableTable schoolsTable = $SchoolsTableTable(this);
  late final $StudentNamesTableTable studentNamesTable =
      $StudentNamesTableTable(this);
  late final $SubjectsTableTable subjectsTable = $SubjectsTableTable(this);
  late final $ScoresTableTable scoresTable = $ScoresTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    sanasTable,
    edarasTable,
    rowsTable,
    rowCasesTable,
    schoolsTable,
    studentNamesTable,
    subjectsTable,
    scoresTable,
  ];
}

typedef $$SanasTableTableCreateCompanionBuilder =
    SanasTableCompanion Function({Value<int> idSana, required int sana});
typedef $$SanasTableTableUpdateCompanionBuilder =
    SanasTableCompanion Function({Value<int> idSana, Value<int> sana});

final class $$SanasTableTableReferences
    extends BaseReferences<_$AppDatabase, $SanasTableTable, SanasTableData> {
  $$SanasTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RowsTableTable, List<RowsTableData>>
  _rowsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.rowsTable,
    aliasName: 'sanas_table__id_sana__rows_table__id_sana',
  );

  $$RowsTableTableProcessedTableManager get rowsTableRefs {
    final manager = $$RowsTableTableTableManager(
      $_db,
      $_db.rowsTable,
    ).filter((f) => f.idSana.idSana.sqlEquals($_itemColumn<int>('id_sana')!));

    final cache = $_typedResult.readTableOrNull(_rowsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RowCasesTableTable, List<RowCasesTableData>>
  _rowCasesTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.rowCasesTable,
    aliasName: 'sanas_table__id_sana__row_cases_table__id_sana',
  );

  $$RowCasesTableTableProcessedTableManager get rowCasesTableRefs {
    final manager = $$RowCasesTableTableTableManager(
      $_db,
      $_db.rowCasesTable,
    ).filter((f) => f.idSana.idSana.sqlEquals($_itemColumn<int>('id_sana')!));

    final cache = $_typedResult.readTableOrNull(_rowCasesTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $StudentNamesTableTable,
    List<StudentNamesTableData>
  >
  _studentNamesTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.studentNamesTable,
        aliasName: 'sanas_table__id_sana__student_names_table__id_sana',
      );

  $$StudentNamesTableTableProcessedTableManager get studentNamesTableRefs {
    final manager = $$StudentNamesTableTableTableManager(
      $_db,
      $_db.studentNamesTable,
    ).filter((f) => f.idSana.idSana.sqlEquals($_itemColumn<int>('id_sana')!));

    final cache = $_typedResult.readTableOrNull(
      _studentNamesTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SubjectsTableTable, List<SubjectsTableData>>
  _subjectsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.subjectsTable,
    aliasName: 'sanas_table__id_sana__subjects_table__id_sana',
  );

  $$SubjectsTableTableProcessedTableManager get subjectsTableRefs {
    final manager = $$SubjectsTableTableTableManager(
      $_db,
      $_db.subjectsTable,
    ).filter((f) => f.idSana.idSana.sqlEquals($_itemColumn<int>('id_sana')!));

    final cache = $_typedResult.readTableOrNull(_subjectsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SanasTableTableFilterComposer
    extends Composer<_$AppDatabase, $SanasTableTable> {
  $$SanasTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idSana => $composableBuilder(
    column: $table.idSana,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sana => $composableBuilder(
    column: $table.sana,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> rowsTableRefs(
    Expression<bool> Function($$RowsTableTableFilterComposer f) f,
  ) {
    final $$RowsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.rowsTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RowsTableTableFilterComposer(
            $db: $db,
            $table: $db.rowsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> rowCasesTableRefs(
    Expression<bool> Function($$RowCasesTableTableFilterComposer f) f,
  ) {
    final $$RowCasesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.rowCasesTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RowCasesTableTableFilterComposer(
            $db: $db,
            $table: $db.rowCasesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> studentNamesTableRefs(
    Expression<bool> Function($$StudentNamesTableTableFilterComposer f) f,
  ) {
    final $$StudentNamesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.studentNamesTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentNamesTableTableFilterComposer(
            $db: $db,
            $table: $db.studentNamesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> subjectsTableRefs(
    Expression<bool> Function($$SubjectsTableTableFilterComposer f) f,
  ) {
    final $$SubjectsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.subjectsTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SubjectsTableTableFilterComposer(
            $db: $db,
            $table: $db.subjectsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SanasTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SanasTableTable> {
  $$SanasTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idSana => $composableBuilder(
    column: $table.idSana,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sana => $composableBuilder(
    column: $table.sana,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SanasTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SanasTableTable> {
  $$SanasTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idSana =>
      $composableBuilder(column: $table.idSana, builder: (column) => column);

  GeneratedColumn<int> get sana =>
      $composableBuilder(column: $table.sana, builder: (column) => column);

  Expression<T> rowsTableRefs<T extends Object>(
    Expression<T> Function($$RowsTableTableAnnotationComposer a) f,
  ) {
    final $$RowsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.rowsTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RowsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.rowsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> rowCasesTableRefs<T extends Object>(
    Expression<T> Function($$RowCasesTableTableAnnotationComposer a) f,
  ) {
    final $$RowCasesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.rowCasesTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RowCasesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.rowCasesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> studentNamesTableRefs<T extends Object>(
    Expression<T> Function($$StudentNamesTableTableAnnotationComposer a) f,
  ) {
    final $$StudentNamesTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.idSana,
          referencedTable: $db.studentNamesTable,
          getReferencedColumn: (t) => t.idSana,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$StudentNamesTableTableAnnotationComposer(
                $db: $db,
                $table: $db.studentNamesTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> subjectsTableRefs<T extends Object>(
    Expression<T> Function($$SubjectsTableTableAnnotationComposer a) f,
  ) {
    final $$SubjectsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.subjectsTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SubjectsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.subjectsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SanasTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SanasTableTable,
          SanasTableData,
          $$SanasTableTableFilterComposer,
          $$SanasTableTableOrderingComposer,
          $$SanasTableTableAnnotationComposer,
          $$SanasTableTableCreateCompanionBuilder,
          $$SanasTableTableUpdateCompanionBuilder,
          (SanasTableData, $$SanasTableTableReferences),
          SanasTableData,
          PrefetchHooks Function({
            bool rowsTableRefs,
            bool rowCasesTableRefs,
            bool studentNamesTableRefs,
            bool subjectsTableRefs,
          })
        > {
  $$SanasTableTableTableManager(_$AppDatabase db, $SanasTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SanasTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SanasTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SanasTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> idSana = const Value.absent(),
                Value<int> sana = const Value.absent(),
              }) => SanasTableCompanion(idSana: idSana, sana: sana),
          createCompanionCallback:
              ({Value<int> idSana = const Value.absent(), required int sana}) =>
                  SanasTableCompanion.insert(idSana: idSana, sana: sana),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SanasTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                rowsTableRefs = false,
                rowCasesTableRefs = false,
                studentNamesTableRefs = false,
                subjectsTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (rowsTableRefs) db.rowsTable,
                    if (rowCasesTableRefs) db.rowCasesTable,
                    if (studentNamesTableRefs) db.studentNamesTable,
                    if (subjectsTableRefs) db.subjectsTable,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (rowsTableRefs)
                        await $_getPrefetchedData<
                          SanasTableData,
                          $SanasTableTable,
                          RowsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$SanasTableTableReferences
                              ._rowsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SanasTableTableReferences(
                                db,
                                table,
                                p0,
                              ).rowsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.idSana == item.idSana,
                              ),
                          typedResults: items,
                        ),
                      if (rowCasesTableRefs)
                        await $_getPrefetchedData<
                          SanasTableData,
                          $SanasTableTable,
                          RowCasesTableData
                        >(
                          currentTable: table,
                          referencedTable: $$SanasTableTableReferences
                              ._rowCasesTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SanasTableTableReferences(
                                db,
                                table,
                                p0,
                              ).rowCasesTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.idSana == item.idSana,
                              ),
                          typedResults: items,
                        ),
                      if (studentNamesTableRefs)
                        await $_getPrefetchedData<
                          SanasTableData,
                          $SanasTableTable,
                          StudentNamesTableData
                        >(
                          currentTable: table,
                          referencedTable: $$SanasTableTableReferences
                              ._studentNamesTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SanasTableTableReferences(
                                db,
                                table,
                                p0,
                              ).studentNamesTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.idSana == item.idSana,
                              ),
                          typedResults: items,
                        ),
                      if (subjectsTableRefs)
                        await $_getPrefetchedData<
                          SanasTableData,
                          $SanasTableTable,
                          SubjectsTableData
                        >(
                          currentTable: table,
                          referencedTable: $$SanasTableTableReferences
                              ._subjectsTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$SanasTableTableReferences(
                                db,
                                table,
                                p0,
                              ).subjectsTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.idSana == item.idSana,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$SanasTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SanasTableTable,
      SanasTableData,
      $$SanasTableTableFilterComposer,
      $$SanasTableTableOrderingComposer,
      $$SanasTableTableAnnotationComposer,
      $$SanasTableTableCreateCompanionBuilder,
      $$SanasTableTableUpdateCompanionBuilder,
      (SanasTableData, $$SanasTableTableReferences),
      SanasTableData,
      PrefetchHooks Function({
        bool rowsTableRefs,
        bool rowCasesTableRefs,
        bool studentNamesTableRefs,
        bool subjectsTableRefs,
      })
    >;
typedef $$EdarasTableTableCreateCompanionBuilder =
    EdarasTableCompanion Function({
      Value<int> idEdara,
      required String edara,
      Value<String?> loc,
    });
typedef $$EdarasTableTableUpdateCompanionBuilder =
    EdarasTableCompanion Function({
      Value<int> idEdara,
      Value<String> edara,
      Value<String?> loc,
    });

final class $$EdarasTableTableReferences
    extends BaseReferences<_$AppDatabase, $EdarasTableTable, EdarasTableData> {
  $$EdarasTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $StudentNamesTableTable,
    List<StudentNamesTableData>
  >
  _studentNamesTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.studentNamesTable,
        aliasName: 'edaras_table__id_edara__student_names_table__id_edara',
      );

  $$StudentNamesTableTableProcessedTableManager get studentNamesTableRefs {
    final manager =
        $$StudentNamesTableTableTableManager(
          $_db,
          $_db.studentNamesTable,
        ).filter(
          (f) => f.idEdara.idEdara.sqlEquals($_itemColumn<int>('id_edara')!),
        );

    final cache = $_typedResult.readTableOrNull(
      _studentNamesTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EdarasTableTableFilterComposer
    extends Composer<_$AppDatabase, $EdarasTableTable> {
  $$EdarasTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idEdara => $composableBuilder(
    column: $table.idEdara,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get edara => $composableBuilder(
    column: $table.edara,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get loc => $composableBuilder(
    column: $table.loc,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> studentNamesTableRefs(
    Expression<bool> Function($$StudentNamesTableTableFilterComposer f) f,
  ) {
    final $$StudentNamesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idEdara,
      referencedTable: $db.studentNamesTable,
      getReferencedColumn: (t) => t.idEdara,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentNamesTableTableFilterComposer(
            $db: $db,
            $table: $db.studentNamesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EdarasTableTableOrderingComposer
    extends Composer<_$AppDatabase, $EdarasTableTable> {
  $$EdarasTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idEdara => $composableBuilder(
    column: $table.idEdara,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get edara => $composableBuilder(
    column: $table.edara,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get loc => $composableBuilder(
    column: $table.loc,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EdarasTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $EdarasTableTable> {
  $$EdarasTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idEdara =>
      $composableBuilder(column: $table.idEdara, builder: (column) => column);

  GeneratedColumn<String> get edara =>
      $composableBuilder(column: $table.edara, builder: (column) => column);

  GeneratedColumn<String> get loc =>
      $composableBuilder(column: $table.loc, builder: (column) => column);

  Expression<T> studentNamesTableRefs<T extends Object>(
    Expression<T> Function($$StudentNamesTableTableAnnotationComposer a) f,
  ) {
    final $$StudentNamesTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.idEdara,
          referencedTable: $db.studentNamesTable,
          getReferencedColumn: (t) => t.idEdara,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$StudentNamesTableTableAnnotationComposer(
                $db: $db,
                $table: $db.studentNamesTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$EdarasTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EdarasTableTable,
          EdarasTableData,
          $$EdarasTableTableFilterComposer,
          $$EdarasTableTableOrderingComposer,
          $$EdarasTableTableAnnotationComposer,
          $$EdarasTableTableCreateCompanionBuilder,
          $$EdarasTableTableUpdateCompanionBuilder,
          (EdarasTableData, $$EdarasTableTableReferences),
          EdarasTableData,
          PrefetchHooks Function({bool studentNamesTableRefs})
        > {
  $$EdarasTableTableTableManager(_$AppDatabase db, $EdarasTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EdarasTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EdarasTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EdarasTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> idEdara = const Value.absent(),
                Value<String> edara = const Value.absent(),
                Value<String?> loc = const Value.absent(),
              }) => EdarasTableCompanion(
                idEdara: idEdara,
                edara: edara,
                loc: loc,
              ),
          createCompanionCallback:
              ({
                Value<int> idEdara = const Value.absent(),
                required String edara,
                Value<String?> loc = const Value.absent(),
              }) => EdarasTableCompanion.insert(
                idEdara: idEdara,
                edara: edara,
                loc: loc,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$EdarasTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({studentNamesTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (studentNamesTableRefs) db.studentNamesTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (studentNamesTableRefs)
                    await $_getPrefetchedData<
                      EdarasTableData,
                      $EdarasTableTable,
                      StudentNamesTableData
                    >(
                      currentTable: table,
                      referencedTable: $$EdarasTableTableReferences
                          ._studentNamesTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$EdarasTableTableReferences(
                            db,
                            table,
                            p0,
                          ).studentNamesTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.idEdara == item.idEdara,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$EdarasTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EdarasTableTable,
      EdarasTableData,
      $$EdarasTableTableFilterComposer,
      $$EdarasTableTableOrderingComposer,
      $$EdarasTableTableAnnotationComposer,
      $$EdarasTableTableCreateCompanionBuilder,
      $$EdarasTableTableUpdateCompanionBuilder,
      (EdarasTableData, $$EdarasTableTableReferences),
      EdarasTableData,
      PrefetchHooks Function({bool studentNamesTableRefs})
    >;
typedef $$RowsTableTableCreateCompanionBuilder =
    RowsTableCompanion Function({
      required int idRow,
      required String rowName,
      required int idSana,
      Value<int> rowid,
    });
typedef $$RowsTableTableUpdateCompanionBuilder =
    RowsTableCompanion Function({
      Value<int> idRow,
      Value<String> rowName,
      Value<int> idSana,
      Value<int> rowid,
    });

final class $$RowsTableTableReferences
    extends BaseReferences<_$AppDatabase, $RowsTableTable, RowsTableData> {
  $$RowsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SanasTableTable _idSanaTable(_$AppDatabase db) =>
      db.sanasTable.createAlias('rows_table__id_sana__sanas_table__id_sana');

  $$SanasTableTableProcessedTableManager get idSana {
    final $_column = $_itemColumn<int>('id_sana')!;

    final manager = $$SanasTableTableTableManager(
      $_db,
      $_db.sanasTable,
    ).filter((f) => f.idSana.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idSanaTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RowsTableTableFilterComposer
    extends Composer<_$AppDatabase, $RowsTableTable> {
  $$RowsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idRow => $composableBuilder(
    column: $table.idRow,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rowName => $composableBuilder(
    column: $table.rowName,
    builder: (column) => ColumnFilters(column),
  );

  $$SanasTableTableFilterComposer get idSana {
    final $$SanasTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableFilterComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RowsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $RowsTableTable> {
  $$RowsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idRow => $composableBuilder(
    column: $table.idRow,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rowName => $composableBuilder(
    column: $table.rowName,
    builder: (column) => ColumnOrderings(column),
  );

  $$SanasTableTableOrderingComposer get idSana {
    final $$SanasTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableOrderingComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RowsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $RowsTableTable> {
  $$RowsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idRow =>
      $composableBuilder(column: $table.idRow, builder: (column) => column);

  GeneratedColumn<String> get rowName =>
      $composableBuilder(column: $table.rowName, builder: (column) => column);

  $$SanasTableTableAnnotationComposer get idSana {
    final $$SanasTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableAnnotationComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RowsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RowsTableTable,
          RowsTableData,
          $$RowsTableTableFilterComposer,
          $$RowsTableTableOrderingComposer,
          $$RowsTableTableAnnotationComposer,
          $$RowsTableTableCreateCompanionBuilder,
          $$RowsTableTableUpdateCompanionBuilder,
          (RowsTableData, $$RowsTableTableReferences),
          RowsTableData,
          PrefetchHooks Function({bool idSana})
        > {
  $$RowsTableTableTableManager(_$AppDatabase db, $RowsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RowsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RowsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RowsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> idRow = const Value.absent(),
                Value<String> rowName = const Value.absent(),
                Value<int> idSana = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RowsTableCompanion(
                idRow: idRow,
                rowName: rowName,
                idSana: idSana,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int idRow,
                required String rowName,
                required int idSana,
                Value<int> rowid = const Value.absent(),
              }) => RowsTableCompanion.insert(
                idRow: idRow,
                rowName: rowName,
                idSana: idSana,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RowsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({idSana = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (idSana) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.idSana,
                                referencedTable: $$RowsTableTableReferences
                                    ._idSanaTable(db),
                                referencedColumn: $$RowsTableTableReferences
                                    ._idSanaTable(db)
                                    .idSana,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RowsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RowsTableTable,
      RowsTableData,
      $$RowsTableTableFilterComposer,
      $$RowsTableTableOrderingComposer,
      $$RowsTableTableAnnotationComposer,
      $$RowsTableTableCreateCompanionBuilder,
      $$RowsTableTableUpdateCompanionBuilder,
      (RowsTableData, $$RowsTableTableReferences),
      RowsTableData,
      PrefetchHooks Function({bool idSana})
    >;
typedef $$RowCasesTableTableCreateCompanionBuilder =
    RowCasesTableCompanion Function({
      required int idCase,
      required int idSana,
      required String caseName,
      required int idRow,
      Value<int> rowid,
    });
typedef $$RowCasesTableTableUpdateCompanionBuilder =
    RowCasesTableCompanion Function({
      Value<int> idCase,
      Value<int> idSana,
      Value<String> caseName,
      Value<int> idRow,
      Value<int> rowid,
    });

final class $$RowCasesTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $RowCasesTableTable, RowCasesTableData> {
  $$RowCasesTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SanasTableTable _idSanaTable(_$AppDatabase db) => db.sanasTable
      .createAlias('row_cases_table__id_sana__sanas_table__id_sana');

  $$SanasTableTableProcessedTableManager get idSana {
    final $_column = $_itemColumn<int>('id_sana')!;

    final manager = $$SanasTableTableTableManager(
      $_db,
      $_db.sanasTable,
    ).filter((f) => f.idSana.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idSanaTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RowCasesTableTableFilterComposer
    extends Composer<_$AppDatabase, $RowCasesTableTable> {
  $$RowCasesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caseName => $composableBuilder(
    column: $table.caseName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get idRow => $composableBuilder(
    column: $table.idRow,
    builder: (column) => ColumnFilters(column),
  );

  $$SanasTableTableFilterComposer get idSana {
    final $$SanasTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableFilterComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RowCasesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $RowCasesTableTable> {
  $$RowCasesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caseName => $composableBuilder(
    column: $table.caseName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get idRow => $composableBuilder(
    column: $table.idRow,
    builder: (column) => ColumnOrderings(column),
  );

  $$SanasTableTableOrderingComposer get idSana {
    final $$SanasTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableOrderingComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RowCasesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $RowCasesTableTable> {
  $$RowCasesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idCase =>
      $composableBuilder(column: $table.idCase, builder: (column) => column);

  GeneratedColumn<String> get caseName =>
      $composableBuilder(column: $table.caseName, builder: (column) => column);

  GeneratedColumn<int> get idRow =>
      $composableBuilder(column: $table.idRow, builder: (column) => column);

  $$SanasTableTableAnnotationComposer get idSana {
    final $$SanasTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableAnnotationComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RowCasesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RowCasesTableTable,
          RowCasesTableData,
          $$RowCasesTableTableFilterComposer,
          $$RowCasesTableTableOrderingComposer,
          $$RowCasesTableTableAnnotationComposer,
          $$RowCasesTableTableCreateCompanionBuilder,
          $$RowCasesTableTableUpdateCompanionBuilder,
          (RowCasesTableData, $$RowCasesTableTableReferences),
          RowCasesTableData,
          PrefetchHooks Function({bool idSana})
        > {
  $$RowCasesTableTableTableManager(_$AppDatabase db, $RowCasesTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RowCasesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RowCasesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RowCasesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> idCase = const Value.absent(),
                Value<int> idSana = const Value.absent(),
                Value<String> caseName = const Value.absent(),
                Value<int> idRow = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => RowCasesTableCompanion(
                idCase: idCase,
                idSana: idSana,
                caseName: caseName,
                idRow: idRow,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int idCase,
                required int idSana,
                required String caseName,
                required int idRow,
                Value<int> rowid = const Value.absent(),
              }) => RowCasesTableCompanion.insert(
                idCase: idCase,
                idSana: idSana,
                caseName: caseName,
                idRow: idRow,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RowCasesTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({idSana = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (idSana) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.idSana,
                                referencedTable: $$RowCasesTableTableReferences
                                    ._idSanaTable(db),
                                referencedColumn: $$RowCasesTableTableReferences
                                    ._idSanaTable(db)
                                    .idSana,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RowCasesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RowCasesTableTable,
      RowCasesTableData,
      $$RowCasesTableTableFilterComposer,
      $$RowCasesTableTableOrderingComposer,
      $$RowCasesTableTableAnnotationComposer,
      $$RowCasesTableTableCreateCompanionBuilder,
      $$RowCasesTableTableUpdateCompanionBuilder,
      (RowCasesTableData, $$RowCasesTableTableReferences),
      RowCasesTableData,
      PrefetchHooks Function({bool idSana})
    >;
typedef $$SchoolsTableTableCreateCompanionBuilder =
    SchoolsTableCompanion Function({
      Value<int> idSchool,
      required String schoolName,
      required int idCase,
      Value<String?> caseName,
      Value<String?> englishSchool,
    });
typedef $$SchoolsTableTableUpdateCompanionBuilder =
    SchoolsTableCompanion Function({
      Value<int> idSchool,
      Value<String> schoolName,
      Value<int> idCase,
      Value<String?> caseName,
      Value<String?> englishSchool,
    });

final class $$SchoolsTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $SchoolsTableTable, SchoolsTableData> {
  $$SchoolsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<
    $StudentNamesTableTable,
    List<StudentNamesTableData>
  >
  _studentNamesTableRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.studentNamesTable,
        aliasName: 'schools_table__id_school__student_names_table__id_school',
      );

  $$StudentNamesTableTableProcessedTableManager get studentNamesTableRefs {
    final manager =
        $$StudentNamesTableTableTableManager(
          $_db,
          $_db.studentNamesTable,
        ).filter(
          (f) => f.idSchool.idSchool.sqlEquals($_itemColumn<int>('id_school')!),
        );

    final cache = $_typedResult.readTableOrNull(
      _studentNamesTableRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SchoolsTableTableFilterComposer
    extends Composer<_$AppDatabase, $SchoolsTableTable> {
  $$SchoolsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idSchool => $composableBuilder(
    column: $table.idSchool,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get schoolName => $composableBuilder(
    column: $table.schoolName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caseName => $composableBuilder(
    column: $table.caseName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get englishSchool => $composableBuilder(
    column: $table.englishSchool,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> studentNamesTableRefs(
    Expression<bool> Function($$StudentNamesTableTableFilterComposer f) f,
  ) {
    final $$StudentNamesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSchool,
      referencedTable: $db.studentNamesTable,
      getReferencedColumn: (t) => t.idSchool,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentNamesTableTableFilterComposer(
            $db: $db,
            $table: $db.studentNamesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SchoolsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SchoolsTableTable> {
  $$SchoolsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idSchool => $composableBuilder(
    column: $table.idSchool,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get schoolName => $composableBuilder(
    column: $table.schoolName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caseName => $composableBuilder(
    column: $table.caseName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get englishSchool => $composableBuilder(
    column: $table.englishSchool,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SchoolsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SchoolsTableTable> {
  $$SchoolsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idSchool =>
      $composableBuilder(column: $table.idSchool, builder: (column) => column);

  GeneratedColumn<String> get schoolName => $composableBuilder(
    column: $table.schoolName,
    builder: (column) => column,
  );

  GeneratedColumn<int> get idCase =>
      $composableBuilder(column: $table.idCase, builder: (column) => column);

  GeneratedColumn<String> get caseName =>
      $composableBuilder(column: $table.caseName, builder: (column) => column);

  GeneratedColumn<String> get englishSchool => $composableBuilder(
    column: $table.englishSchool,
    builder: (column) => column,
  );

  Expression<T> studentNamesTableRefs<T extends Object>(
    Expression<T> Function($$StudentNamesTableTableAnnotationComposer a) f,
  ) {
    final $$StudentNamesTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.idSchool,
          referencedTable: $db.studentNamesTable,
          getReferencedColumn: (t) => t.idSchool,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$StudentNamesTableTableAnnotationComposer(
                $db: $db,
                $table: $db.studentNamesTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$SchoolsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SchoolsTableTable,
          SchoolsTableData,
          $$SchoolsTableTableFilterComposer,
          $$SchoolsTableTableOrderingComposer,
          $$SchoolsTableTableAnnotationComposer,
          $$SchoolsTableTableCreateCompanionBuilder,
          $$SchoolsTableTableUpdateCompanionBuilder,
          (SchoolsTableData, $$SchoolsTableTableReferences),
          SchoolsTableData,
          PrefetchHooks Function({bool studentNamesTableRefs})
        > {
  $$SchoolsTableTableTableManager(_$AppDatabase db, $SchoolsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SchoolsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SchoolsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SchoolsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> idSchool = const Value.absent(),
                Value<String> schoolName = const Value.absent(),
                Value<int> idCase = const Value.absent(),
                Value<String?> caseName = const Value.absent(),
                Value<String?> englishSchool = const Value.absent(),
              }) => SchoolsTableCompanion(
                idSchool: idSchool,
                schoolName: schoolName,
                idCase: idCase,
                caseName: caseName,
                englishSchool: englishSchool,
              ),
          createCompanionCallback:
              ({
                Value<int> idSchool = const Value.absent(),
                required String schoolName,
                required int idCase,
                Value<String?> caseName = const Value.absent(),
                Value<String?> englishSchool = const Value.absent(),
              }) => SchoolsTableCompanion.insert(
                idSchool: idSchool,
                schoolName: schoolName,
                idCase: idCase,
                caseName: caseName,
                englishSchool: englishSchool,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SchoolsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({studentNamesTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (studentNamesTableRefs) db.studentNamesTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (studentNamesTableRefs)
                    await $_getPrefetchedData<
                      SchoolsTableData,
                      $SchoolsTableTable,
                      StudentNamesTableData
                    >(
                      currentTable: table,
                      referencedTable: $$SchoolsTableTableReferences
                          ._studentNamesTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$SchoolsTableTableReferences(
                            db,
                            table,
                            p0,
                          ).studentNamesTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.idSchool == item.idSchool,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SchoolsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SchoolsTableTable,
      SchoolsTableData,
      $$SchoolsTableTableFilterComposer,
      $$SchoolsTableTableOrderingComposer,
      $$SchoolsTableTableAnnotationComposer,
      $$SchoolsTableTableCreateCompanionBuilder,
      $$SchoolsTableTableUpdateCompanionBuilder,
      (SchoolsTableData, $$SchoolsTableTableReferences),
      SchoolsTableData,
      PrefetchHooks Function({bool studentNamesTableRefs})
    >;
typedef $$StudentNamesTableTableCreateCompanionBuilder =
    StudentNamesTableCompanion Function({
      Value<int> stuId,
      required String pf,
      required int idSana,
      required int idEdara,
      required int idRow,
      required int idSchool,
      required int idCase,
      required double total,
      Value<String?> nat,
      required String no,
      required String name,
      Value<String?> systemType,
      Value<String?> round,
      Value<double?> maxTotal,
      Value<String?> translation,
    });
typedef $$StudentNamesTableTableUpdateCompanionBuilder =
    StudentNamesTableCompanion Function({
      Value<int> stuId,
      Value<String> pf,
      Value<int> idSana,
      Value<int> idEdara,
      Value<int> idRow,
      Value<int> idSchool,
      Value<int> idCase,
      Value<double> total,
      Value<String?> nat,
      Value<String> no,
      Value<String> name,
      Value<String?> systemType,
      Value<String?> round,
      Value<double?> maxTotal,
      Value<String?> translation,
    });

final class $$StudentNamesTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $StudentNamesTableTable,
          StudentNamesTableData
        > {
  $$StudentNamesTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SanasTableTable _idSanaTable(_$AppDatabase db) => db.sanasTable
      .createAlias('student_names_table__id_sana__sanas_table__id_sana');

  $$SanasTableTableProcessedTableManager get idSana {
    final $_column = $_itemColumn<int>('id_sana')!;

    final manager = $$SanasTableTableTableManager(
      $_db,
      $_db.sanasTable,
    ).filter((f) => f.idSana.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idSanaTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $EdarasTableTable _idEdaraTable(_$AppDatabase db) => db.edarasTable
      .createAlias('student_names_table__id_edara__edaras_table__id_edara');

  $$EdarasTableTableProcessedTableManager get idEdara {
    final $_column = $_itemColumn<int>('id_edara')!;

    final manager = $$EdarasTableTableTableManager(
      $_db,
      $_db.edarasTable,
    ).filter((f) => f.idEdara.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idEdaraTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $SchoolsTableTable _idSchoolTable(_$AppDatabase db) => db.schoolsTable
      .createAlias('student_names_table__id_school__schools_table__id_school');

  $$SchoolsTableTableProcessedTableManager get idSchool {
    final $_column = $_itemColumn<int>('id_school')!;

    final manager = $$SchoolsTableTableTableManager(
      $_db,
      $_db.schoolsTable,
    ).filter((f) => f.idSchool.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idSchoolTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$ScoresTableTable, List<ScoresTableData>>
  _scoresTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.scoresTable,
    aliasName: 'student_names_table__stu_id__scores_table__stu_id',
  );

  $$ScoresTableTableProcessedTableManager get scoresTableRefs {
    final manager = $$ScoresTableTableTableManager(
      $_db,
      $_db.scoresTable,
    ).filter((f) => f.stuId.stuId.sqlEquals($_itemColumn<int>('stu_id')!));

    final cache = $_typedResult.readTableOrNull(_scoresTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$StudentNamesTableTableFilterComposer
    extends Composer<_$AppDatabase, $StudentNamesTableTable> {
  $$StudentNamesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get stuId => $composableBuilder(
    column: $table.stuId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get pf => $composableBuilder(
    column: $table.pf,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get idRow => $composableBuilder(
    column: $table.idRow,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nat => $composableBuilder(
    column: $table.nat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get no => $composableBuilder(
    column: $table.no,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get systemType => $composableBuilder(
    column: $table.systemType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get round => $composableBuilder(
    column: $table.round,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxTotal => $composableBuilder(
    column: $table.maxTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => ColumnFilters(column),
  );

  $$SanasTableTableFilterComposer get idSana {
    final $$SanasTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableFilterComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EdarasTableTableFilterComposer get idEdara {
    final $$EdarasTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idEdara,
      referencedTable: $db.edarasTable,
      getReferencedColumn: (t) => t.idEdara,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EdarasTableTableFilterComposer(
            $db: $db,
            $table: $db.edarasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SchoolsTableTableFilterComposer get idSchool {
    final $$SchoolsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSchool,
      referencedTable: $db.schoolsTable,
      getReferencedColumn: (t) => t.idSchool,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolsTableTableFilterComposer(
            $db: $db,
            $table: $db.schoolsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> scoresTableRefs(
    Expression<bool> Function($$ScoresTableTableFilterComposer f) f,
  ) {
    final $$ScoresTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stuId,
      referencedTable: $db.scoresTable,
      getReferencedColumn: (t) => t.stuId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScoresTableTableFilterComposer(
            $db: $db,
            $table: $db.scoresTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StudentNamesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $StudentNamesTableTable> {
  $$StudentNamesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get stuId => $composableBuilder(
    column: $table.stuId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get pf => $composableBuilder(
    column: $table.pf,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get idRow => $composableBuilder(
    column: $table.idRow,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get total => $composableBuilder(
    column: $table.total,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nat => $composableBuilder(
    column: $table.nat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get no => $composableBuilder(
    column: $table.no,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get systemType => $composableBuilder(
    column: $table.systemType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get round => $composableBuilder(
    column: $table.round,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxTotal => $composableBuilder(
    column: $table.maxTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => ColumnOrderings(column),
  );

  $$SanasTableTableOrderingComposer get idSana {
    final $$SanasTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableOrderingComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EdarasTableTableOrderingComposer get idEdara {
    final $$EdarasTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idEdara,
      referencedTable: $db.edarasTable,
      getReferencedColumn: (t) => t.idEdara,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EdarasTableTableOrderingComposer(
            $db: $db,
            $table: $db.edarasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SchoolsTableTableOrderingComposer get idSchool {
    final $$SchoolsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSchool,
      referencedTable: $db.schoolsTable,
      getReferencedColumn: (t) => t.idSchool,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolsTableTableOrderingComposer(
            $db: $db,
            $table: $db.schoolsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StudentNamesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudentNamesTableTable> {
  $$StudentNamesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get stuId =>
      $composableBuilder(column: $table.stuId, builder: (column) => column);

  GeneratedColumn<String> get pf =>
      $composableBuilder(column: $table.pf, builder: (column) => column);

  GeneratedColumn<int> get idRow =>
      $composableBuilder(column: $table.idRow, builder: (column) => column);

  GeneratedColumn<int> get idCase =>
      $composableBuilder(column: $table.idCase, builder: (column) => column);

  GeneratedColumn<double> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<String> get nat =>
      $composableBuilder(column: $table.nat, builder: (column) => column);

  GeneratedColumn<String> get no =>
      $composableBuilder(column: $table.no, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get systemType => $composableBuilder(
    column: $table.systemType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get round =>
      $composableBuilder(column: $table.round, builder: (column) => column);

  GeneratedColumn<double> get maxTotal =>
      $composableBuilder(column: $table.maxTotal, builder: (column) => column);

  GeneratedColumn<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => column,
  );

  $$SanasTableTableAnnotationComposer get idSana {
    final $$SanasTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableAnnotationComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$EdarasTableTableAnnotationComposer get idEdara {
    final $$EdarasTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idEdara,
      referencedTable: $db.edarasTable,
      getReferencedColumn: (t) => t.idEdara,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EdarasTableTableAnnotationComposer(
            $db: $db,
            $table: $db.edarasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$SchoolsTableTableAnnotationComposer get idSchool {
    final $$SchoolsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSchool,
      referencedTable: $db.schoolsTable,
      getReferencedColumn: (t) => t.idSchool,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SchoolsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.schoolsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> scoresTableRefs<T extends Object>(
    Expression<T> Function($$ScoresTableTableAnnotationComposer a) f,
  ) {
    final $$ScoresTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stuId,
      referencedTable: $db.scoresTable,
      getReferencedColumn: (t) => t.stuId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ScoresTableTableAnnotationComposer(
            $db: $db,
            $table: $db.scoresTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StudentNamesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StudentNamesTableTable,
          StudentNamesTableData,
          $$StudentNamesTableTableFilterComposer,
          $$StudentNamesTableTableOrderingComposer,
          $$StudentNamesTableTableAnnotationComposer,
          $$StudentNamesTableTableCreateCompanionBuilder,
          $$StudentNamesTableTableUpdateCompanionBuilder,
          (StudentNamesTableData, $$StudentNamesTableTableReferences),
          StudentNamesTableData,
          PrefetchHooks Function({
            bool idSana,
            bool idEdara,
            bool idSchool,
            bool scoresTableRefs,
          })
        > {
  $$StudentNamesTableTableTableManager(
    _$AppDatabase db,
    $StudentNamesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudentNamesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudentNamesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudentNamesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> stuId = const Value.absent(),
                Value<String> pf = const Value.absent(),
                Value<int> idSana = const Value.absent(),
                Value<int> idEdara = const Value.absent(),
                Value<int> idRow = const Value.absent(),
                Value<int> idSchool = const Value.absent(),
                Value<int> idCase = const Value.absent(),
                Value<double> total = const Value.absent(),
                Value<String?> nat = const Value.absent(),
                Value<String> no = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> systemType = const Value.absent(),
                Value<String?> round = const Value.absent(),
                Value<double?> maxTotal = const Value.absent(),
                Value<String?> translation = const Value.absent(),
              }) => StudentNamesTableCompanion(
                stuId: stuId,
                pf: pf,
                idSana: idSana,
                idEdara: idEdara,
                idRow: idRow,
                idSchool: idSchool,
                idCase: idCase,
                total: total,
                nat: nat,
                no: no,
                name: name,
                systemType: systemType,
                round: round,
                maxTotal: maxTotal,
                translation: translation,
              ),
          createCompanionCallback:
              ({
                Value<int> stuId = const Value.absent(),
                required String pf,
                required int idSana,
                required int idEdara,
                required int idRow,
                required int idSchool,
                required int idCase,
                required double total,
                Value<String?> nat = const Value.absent(),
                required String no,
                required String name,
                Value<String?> systemType = const Value.absent(),
                Value<String?> round = const Value.absent(),
                Value<double?> maxTotal = const Value.absent(),
                Value<String?> translation = const Value.absent(),
              }) => StudentNamesTableCompanion.insert(
                stuId: stuId,
                pf: pf,
                idSana: idSana,
                idEdara: idEdara,
                idRow: idRow,
                idSchool: idSchool,
                idCase: idCase,
                total: total,
                nat: nat,
                no: no,
                name: name,
                systemType: systemType,
                round: round,
                maxTotal: maxTotal,
                translation: translation,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$StudentNamesTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                idSana = false,
                idEdara = false,
                idSchool = false,
                scoresTableRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (scoresTableRefs) db.scoresTable,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (idSana) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.idSana,
                                    referencedTable:
                                        $$StudentNamesTableTableReferences
                                            ._idSanaTable(db),
                                    referencedColumn:
                                        $$StudentNamesTableTableReferences
                                            ._idSanaTable(db)
                                            .idSana,
                                  )
                                  as T;
                        }
                        if (idEdara) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.idEdara,
                                    referencedTable:
                                        $$StudentNamesTableTableReferences
                                            ._idEdaraTable(db),
                                    referencedColumn:
                                        $$StudentNamesTableTableReferences
                                            ._idEdaraTable(db)
                                            .idEdara,
                                  )
                                  as T;
                        }
                        if (idSchool) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.idSchool,
                                    referencedTable:
                                        $$StudentNamesTableTableReferences
                                            ._idSchoolTable(db),
                                    referencedColumn:
                                        $$StudentNamesTableTableReferences
                                            ._idSchoolTable(db)
                                            .idSchool,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (scoresTableRefs)
                        await $_getPrefetchedData<
                          StudentNamesTableData,
                          $StudentNamesTableTable,
                          ScoresTableData
                        >(
                          currentTable: table,
                          referencedTable: $$StudentNamesTableTableReferences
                              ._scoresTableRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$StudentNamesTableTableReferences(
                                db,
                                table,
                                p0,
                              ).scoresTableRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.stuId == item.stuId,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$StudentNamesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StudentNamesTableTable,
      StudentNamesTableData,
      $$StudentNamesTableTableFilterComposer,
      $$StudentNamesTableTableOrderingComposer,
      $$StudentNamesTableTableAnnotationComposer,
      $$StudentNamesTableTableCreateCompanionBuilder,
      $$StudentNamesTableTableUpdateCompanionBuilder,
      (StudentNamesTableData, $$StudentNamesTableTableReferences),
      StudentNamesTableData,
      PrefetchHooks Function({
        bool idSana,
        bool idEdara,
        bool idSchool,
        bool scoresTableRefs,
      })
    >;
typedef $$SubjectsTableTableCreateCompanionBuilder =
    SubjectsTableCompanion Function({
      required int idSubject,
      required int idCase,
      required int idSana,
      required String caseName,
      Value<String?> subSubject,
      required String subjectName,
      required double maxScore,
      required double minScore,
      Value<String?> translation,
      Value<int> rowid,
    });
typedef $$SubjectsTableTableUpdateCompanionBuilder =
    SubjectsTableCompanion Function({
      Value<int> idSubject,
      Value<int> idCase,
      Value<int> idSana,
      Value<String> caseName,
      Value<String?> subSubject,
      Value<String> subjectName,
      Value<double> maxScore,
      Value<double> minScore,
      Value<String?> translation,
      Value<int> rowid,
    });

final class $$SubjectsTableTableReferences
    extends
        BaseReferences<_$AppDatabase, $SubjectsTableTable, SubjectsTableData> {
  $$SubjectsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $SanasTableTable _idSanaTable(_$AppDatabase db) => db.sanasTable
      .createAlias('subjects_table__id_sana__sanas_table__id_sana');

  $$SanasTableTableProcessedTableManager get idSana {
    final $_column = $_itemColumn<int>('id_sana')!;

    final manager = $$SanasTableTableTableManager(
      $_db,
      $_db.sanasTable,
    ).filter((f) => f.idSana.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_idSanaTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SubjectsTableTableFilterComposer
    extends Composer<_$AppDatabase, $SubjectsTableTable> {
  $$SubjectsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idSubject => $composableBuilder(
    column: $table.idSubject,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caseName => $composableBuilder(
    column: $table.caseName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subSubject => $composableBuilder(
    column: $table.subSubject,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subjectName => $composableBuilder(
    column: $table.subjectName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxScore => $composableBuilder(
    column: $table.maxScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minScore => $composableBuilder(
    column: $table.minScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => ColumnFilters(column),
  );

  $$SanasTableTableFilterComposer get idSana {
    final $$SanasTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableFilterComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SubjectsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SubjectsTableTable> {
  $$SubjectsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idSubject => $composableBuilder(
    column: $table.idSubject,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get idCase => $composableBuilder(
    column: $table.idCase,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caseName => $composableBuilder(
    column: $table.caseName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subSubject => $composableBuilder(
    column: $table.subSubject,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subjectName => $composableBuilder(
    column: $table.subjectName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxScore => $composableBuilder(
    column: $table.maxScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minScore => $composableBuilder(
    column: $table.minScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => ColumnOrderings(column),
  );

  $$SanasTableTableOrderingComposer get idSana {
    final $$SanasTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableOrderingComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SubjectsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SubjectsTableTable> {
  $$SubjectsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idSubject =>
      $composableBuilder(column: $table.idSubject, builder: (column) => column);

  GeneratedColumn<int> get idCase =>
      $composableBuilder(column: $table.idCase, builder: (column) => column);

  GeneratedColumn<String> get caseName =>
      $composableBuilder(column: $table.caseName, builder: (column) => column);

  GeneratedColumn<String> get subSubject => $composableBuilder(
    column: $table.subSubject,
    builder: (column) => column,
  );

  GeneratedColumn<String> get subjectName => $composableBuilder(
    column: $table.subjectName,
    builder: (column) => column,
  );

  GeneratedColumn<double> get maxScore =>
      $composableBuilder(column: $table.maxScore, builder: (column) => column);

  GeneratedColumn<double> get minScore =>
      $composableBuilder(column: $table.minScore, builder: (column) => column);

  GeneratedColumn<String> get translation => $composableBuilder(
    column: $table.translation,
    builder: (column) => column,
  );

  $$SanasTableTableAnnotationComposer get idSana {
    final $$SanasTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.idSana,
      referencedTable: $db.sanasTable,
      getReferencedColumn: (t) => t.idSana,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SanasTableTableAnnotationComposer(
            $db: $db,
            $table: $db.sanasTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SubjectsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SubjectsTableTable,
          SubjectsTableData,
          $$SubjectsTableTableFilterComposer,
          $$SubjectsTableTableOrderingComposer,
          $$SubjectsTableTableAnnotationComposer,
          $$SubjectsTableTableCreateCompanionBuilder,
          $$SubjectsTableTableUpdateCompanionBuilder,
          (SubjectsTableData, $$SubjectsTableTableReferences),
          SubjectsTableData,
          PrefetchHooks Function({bool idSana})
        > {
  $$SubjectsTableTableTableManager(_$AppDatabase db, $SubjectsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SubjectsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SubjectsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SubjectsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> idSubject = const Value.absent(),
                Value<int> idCase = const Value.absent(),
                Value<int> idSana = const Value.absent(),
                Value<String> caseName = const Value.absent(),
                Value<String?> subSubject = const Value.absent(),
                Value<String> subjectName = const Value.absent(),
                Value<double> maxScore = const Value.absent(),
                Value<double> minScore = const Value.absent(),
                Value<String?> translation = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SubjectsTableCompanion(
                idSubject: idSubject,
                idCase: idCase,
                idSana: idSana,
                caseName: caseName,
                subSubject: subSubject,
                subjectName: subjectName,
                maxScore: maxScore,
                minScore: minScore,
                translation: translation,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int idSubject,
                required int idCase,
                required int idSana,
                required String caseName,
                Value<String?> subSubject = const Value.absent(),
                required String subjectName,
                required double maxScore,
                required double minScore,
                Value<String?> translation = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SubjectsTableCompanion.insert(
                idSubject: idSubject,
                idCase: idCase,
                idSana: idSana,
                caseName: caseName,
                subSubject: subSubject,
                subjectName: subjectName,
                maxScore: maxScore,
                minScore: minScore,
                translation: translation,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SubjectsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({idSana = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (idSana) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.idSana,
                                referencedTable: $$SubjectsTableTableReferences
                                    ._idSanaTable(db),
                                referencedColumn: $$SubjectsTableTableReferences
                                    ._idSanaTable(db)
                                    .idSana,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SubjectsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SubjectsTableTable,
      SubjectsTableData,
      $$SubjectsTableTableFilterComposer,
      $$SubjectsTableTableOrderingComposer,
      $$SubjectsTableTableAnnotationComposer,
      $$SubjectsTableTableCreateCompanionBuilder,
      $$SubjectsTableTableUpdateCompanionBuilder,
      (SubjectsTableData, $$SubjectsTableTableReferences),
      SubjectsTableData,
      PrefetchHooks Function({bool idSana})
    >;
typedef $$ScoresTableTableCreateCompanionBuilder =
    ScoresTableCompanion Function({
      required int stuId,
      required int idSubject,
      required double score,
      Value<int> rowid,
    });
typedef $$ScoresTableTableUpdateCompanionBuilder =
    ScoresTableCompanion Function({
      Value<int> stuId,
      Value<int> idSubject,
      Value<double> score,
      Value<int> rowid,
    });

final class $$ScoresTableTableReferences
    extends BaseReferences<_$AppDatabase, $ScoresTableTable, ScoresTableData> {
  $$ScoresTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $StudentNamesTableTable _stuIdTable(_$AppDatabase db) => db
      .studentNamesTable
      .createAlias('scores_table__stu_id__student_names_table__stu_id');

  $$StudentNamesTableTableProcessedTableManager get stuId {
    final $_column = $_itemColumn<int>('stu_id')!;

    final manager = $$StudentNamesTableTableTableManager(
      $_db,
      $_db.studentNamesTable,
    ).filter((f) => f.stuId.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_stuIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ScoresTableTableFilterComposer
    extends Composer<_$AppDatabase, $ScoresTableTable> {
  $$ScoresTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get idSubject => $composableBuilder(
    column: $table.idSubject,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnFilters(column),
  );

  $$StudentNamesTableTableFilterComposer get stuId {
    final $$StudentNamesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stuId,
      referencedTable: $db.studentNamesTable,
      getReferencedColumn: (t) => t.stuId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentNamesTableTableFilterComposer(
            $db: $db,
            $table: $db.studentNamesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScoresTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ScoresTableTable> {
  $$ScoresTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get idSubject => $composableBuilder(
    column: $table.idSubject,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get score => $composableBuilder(
    column: $table.score,
    builder: (column) => ColumnOrderings(column),
  );

  $$StudentNamesTableTableOrderingComposer get stuId {
    final $$StudentNamesTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stuId,
      referencedTable: $db.studentNamesTable,
      getReferencedColumn: (t) => t.stuId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StudentNamesTableTableOrderingComposer(
            $db: $db,
            $table: $db.studentNamesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ScoresTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ScoresTableTable> {
  $$ScoresTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get idSubject =>
      $composableBuilder(column: $table.idSubject, builder: (column) => column);

  GeneratedColumn<double> get score =>
      $composableBuilder(column: $table.score, builder: (column) => column);

  $$StudentNamesTableTableAnnotationComposer get stuId {
    final $$StudentNamesTableTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.stuId,
          referencedTable: $db.studentNamesTable,
          getReferencedColumn: (t) => t.stuId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$StudentNamesTableTableAnnotationComposer(
                $db: $db,
                $table: $db.studentNamesTable,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$ScoresTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ScoresTableTable,
          ScoresTableData,
          $$ScoresTableTableFilterComposer,
          $$ScoresTableTableOrderingComposer,
          $$ScoresTableTableAnnotationComposer,
          $$ScoresTableTableCreateCompanionBuilder,
          $$ScoresTableTableUpdateCompanionBuilder,
          (ScoresTableData, $$ScoresTableTableReferences),
          ScoresTableData,
          PrefetchHooks Function({bool stuId})
        > {
  $$ScoresTableTableTableManager(_$AppDatabase db, $ScoresTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ScoresTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ScoresTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ScoresTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> stuId = const Value.absent(),
                Value<int> idSubject = const Value.absent(),
                Value<double> score = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ScoresTableCompanion(
                stuId: stuId,
                idSubject: idSubject,
                score: score,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int stuId,
                required int idSubject,
                required double score,
                Value<int> rowid = const Value.absent(),
              }) => ScoresTableCompanion.insert(
                stuId: stuId,
                idSubject: idSubject,
                score: score,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ScoresTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({stuId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (stuId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.stuId,
                                referencedTable: $$ScoresTableTableReferences
                                    ._stuIdTable(db),
                                referencedColumn: $$ScoresTableTableReferences
                                    ._stuIdTable(db)
                                    .stuId,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ScoresTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ScoresTableTable,
      ScoresTableData,
      $$ScoresTableTableFilterComposer,
      $$ScoresTableTableOrderingComposer,
      $$ScoresTableTableAnnotationComposer,
      $$ScoresTableTableCreateCompanionBuilder,
      $$ScoresTableTableUpdateCompanionBuilder,
      (ScoresTableData, $$ScoresTableTableReferences),
      ScoresTableData,
      PrefetchHooks Function({bool stuId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SanasTableTableTableManager get sanasTable =>
      $$SanasTableTableTableManager(_db, _db.sanasTable);
  $$EdarasTableTableTableManager get edarasTable =>
      $$EdarasTableTableTableManager(_db, _db.edarasTable);
  $$RowsTableTableTableManager get rowsTable =>
      $$RowsTableTableTableManager(_db, _db.rowsTable);
  $$RowCasesTableTableTableManager get rowCasesTable =>
      $$RowCasesTableTableTableManager(_db, _db.rowCasesTable);
  $$SchoolsTableTableTableManager get schoolsTable =>
      $$SchoolsTableTableTableManager(_db, _db.schoolsTable);
  $$StudentNamesTableTableTableManager get studentNamesTable =>
      $$StudentNamesTableTableTableManager(_db, _db.studentNamesTable);
  $$SubjectsTableTableTableManager get subjectsTable =>
      $$SubjectsTableTableTableManager(_db, _db.subjectsTable);
  $$ScoresTableTableTableManager get scoresTable =>
      $$ScoresTableTableTableManager(_db, _db.scoresTable);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $StudentsTableTable extends StudentsTable
    with TableInfo<$StudentsTableTable, StudentsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StudentsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nationalIdMeta = const VerificationMeta(
    'nationalId',
  );
  @override
  late final GeneratedColumn<String> nationalId = GeneratedColumn<String>(
    'national_id',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 14,
      maxTextLength: 14,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
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
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<String> year = GeneratedColumn<String>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _educationMeta = const VerificationMeta(
    'education',
  );
  @override
  late final GeneratedColumn<String> education = GeneratedColumn<String>(
    'education',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _governorateMeta = const VerificationMeta(
    'governorate',
  );
  @override
  late final GeneratedColumn<String> governorate = GeneratedColumn<String>(
    'governorate',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _schoolMeta = const VerificationMeta('school');
  @override
  late final GeneratedColumn<String> school = GeneratedColumn<String>(
    'school',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nationalId,
    name,
    year,
    education,
    governorate,
    school,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'students_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<StudentsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('national_id')) {
      context.handle(
        _nationalIdMeta,
        nationalId.isAcceptableOrUnknown(data['national_id']!, _nationalIdMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('education')) {
      context.handle(
        _educationMeta,
        education.isAcceptableOrUnknown(data['education']!, _educationMeta),
      );
    } else if (isInserting) {
      context.missing(_educationMeta);
    }
    if (data.containsKey('governorate')) {
      context.handle(
        _governorateMeta,
        governorate.isAcceptableOrUnknown(
          data['governorate']!,
          _governorateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_governorateMeta);
    }
    if (data.containsKey('school')) {
      context.handle(
        _schoolMeta,
        school.isAcceptableOrUnknown(data['school']!, _schoolMeta),
      );
    } else if (isInserting) {
      context.missing(_schoolMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StudentsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StudentsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      nationalId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}national_id'],
      ),
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year'],
      )!,
      education: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}education'],
      )!,
      governorate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}governorate'],
      )!,
      school: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}school'],
      )!,
    );
  }

  @override
  $StudentsTableTable createAlias(String alias) {
    return $StudentsTableTable(attachedDatabase, alias);
  }
}

class StudentsTableData extends DataClass
    implements Insertable<StudentsTableData> {
  final int id;
  final String? nationalId;
  final String name;
  final String year;
  final String education;
  final String governorate;
  final String school;
  const StudentsTableData({
    required this.id,
    this.nationalId,
    required this.name,
    required this.year,
    required this.education,
    required this.governorate,
    required this.school,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || nationalId != null) {
      map['national_id'] = Variable<String>(nationalId);
    }
    map['name'] = Variable<String>(name);
    map['year'] = Variable<String>(year);
    map['education'] = Variable<String>(education);
    map['governorate'] = Variable<String>(governorate);
    map['school'] = Variable<String>(school);
    return map;
  }

  StudentsTableCompanion toCompanion(bool nullToAbsent) {
    return StudentsTableCompanion(
      id: Value(id),
      nationalId: nationalId == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalId),
      name: Value(name),
      year: Value(year),
      education: Value(education),
      governorate: Value(governorate),
      school: Value(school),
    );
  }

  factory StudentsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StudentsTableData(
      id: serializer.fromJson<int>(json['id']),
      nationalId: serializer.fromJson<String?>(json['nationalId']),
      name: serializer.fromJson<String>(json['name']),
      year: serializer.fromJson<String>(json['year']),
      education: serializer.fromJson<String>(json['education']),
      governorate: serializer.fromJson<String>(json['governorate']),
      school: serializer.fromJson<String>(json['school']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nationalId': serializer.toJson<String?>(nationalId),
      'name': serializer.toJson<String>(name),
      'year': serializer.toJson<String>(year),
      'education': serializer.toJson<String>(education),
      'governorate': serializer.toJson<String>(governorate),
      'school': serializer.toJson<String>(school),
    };
  }

  StudentsTableData copyWith({
    int? id,
    Value<String?> nationalId = const Value.absent(),
    String? name,
    String? year,
    String? education,
    String? governorate,
    String? school,
  }) => StudentsTableData(
    id: id ?? this.id,
    nationalId: nationalId.present ? nationalId.value : this.nationalId,
    name: name ?? this.name,
    year: year ?? this.year,
    education: education ?? this.education,
    governorate: governorate ?? this.governorate,
    school: school ?? this.school,
  );
  StudentsTableData copyWithCompanion(StudentsTableCompanion data) {
    return StudentsTableData(
      id: data.id.present ? data.id.value : this.id,
      nationalId: data.nationalId.present
          ? data.nationalId.value
          : this.nationalId,
      name: data.name.present ? data.name.value : this.name,
      year: data.year.present ? data.year.value : this.year,
      education: data.education.present ? data.education.value : this.education,
      governorate: data.governorate.present
          ? data.governorate.value
          : this.governorate,
      school: data.school.present ? data.school.value : this.school,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StudentsTableData(')
          ..write('id: $id, ')
          ..write('nationalId: $nationalId, ')
          ..write('name: $name, ')
          ..write('year: $year, ')
          ..write('education: $education, ')
          ..write('governorate: $governorate, ')
          ..write('school: $school')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nationalId, name, year, education, governorate, school);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StudentsTableData &&
          other.id == this.id &&
          other.nationalId == this.nationalId &&
          other.name == this.name &&
          other.year == this.year &&
          other.education == this.education &&
          other.governorate == this.governorate &&
          other.school == this.school);
}

class StudentsTableCompanion extends UpdateCompanion<StudentsTableData> {
  final Value<int> id;
  final Value<String?> nationalId;
  final Value<String> name;
  final Value<String> year;
  final Value<String> education;
  final Value<String> governorate;
  final Value<String> school;
  const StudentsTableCompanion({
    this.id = const Value.absent(),
    this.nationalId = const Value.absent(),
    this.name = const Value.absent(),
    this.year = const Value.absent(),
    this.education = const Value.absent(),
    this.governorate = const Value.absent(),
    this.school = const Value.absent(),
  });
  StudentsTableCompanion.insert({
    this.id = const Value.absent(),
    this.nationalId = const Value.absent(),
    required String name,
    required String year,
    required String education,
    required String governorate,
    required String school,
  }) : name = Value(name),
       year = Value(year),
       education = Value(education),
       governorate = Value(governorate),
       school = Value(school);
  static Insertable<StudentsTableData> custom({
    Expression<int>? id,
    Expression<String>? nationalId,
    Expression<String>? name,
    Expression<String>? year,
    Expression<String>? education,
    Expression<String>? governorate,
    Expression<String>? school,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nationalId != null) 'national_id': nationalId,
      if (name != null) 'name': name,
      if (year != null) 'year': year,
      if (education != null) 'education': education,
      if (governorate != null) 'governorate': governorate,
      if (school != null) 'school': school,
    });
  }

  StudentsTableCompanion copyWith({
    Value<int>? id,
    Value<String?>? nationalId,
    Value<String>? name,
    Value<String>? year,
    Value<String>? education,
    Value<String>? governorate,
    Value<String>? school,
  }) {
    return StudentsTableCompanion(
      id: id ?? this.id,
      nationalId: nationalId ?? this.nationalId,
      name: name ?? this.name,
      year: year ?? this.year,
      education: education ?? this.education,
      governorate: governorate ?? this.governorate,
      school: school ?? this.school,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nationalId.present) {
      map['national_id'] = Variable<String>(nationalId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (year.present) {
      map['year'] = Variable<String>(year.value);
    }
    if (education.present) {
      map['education'] = Variable<String>(education.value);
    }
    if (governorate.present) {
      map['governorate'] = Variable<String>(governorate.value);
    }
    if (school.present) {
      map['school'] = Variable<String>(school.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StudentsTableCompanion(')
          ..write('id: $id, ')
          ..write('nationalId: $nationalId, ')
          ..write('name: $name, ')
          ..write('year: $year, ')
          ..write('education: $education, ')
          ..write('governorate: $governorate, ')
          ..write('school: $school')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $StudentsTableTable studentsTable = $StudentsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [studentsTable];
}

typedef $$StudentsTableTableCreateCompanionBuilder =
    StudentsTableCompanion Function({
      Value<int> id,
      Value<String?> nationalId,
      required String name,
      required String year,
      required String education,
      required String governorate,
      required String school,
    });
typedef $$StudentsTableTableUpdateCompanionBuilder =
    StudentsTableCompanion Function({
      Value<int> id,
      Value<String?> nationalId,
      Value<String> name,
      Value<String> year,
      Value<String> education,
      Value<String> governorate,
      Value<String> school,
    });

class $$StudentsTableTableFilterComposer
    extends Composer<_$AppDatabase, $StudentsTableTable> {
  $$StudentsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nationalId => $composableBuilder(
    column: $table.nationalId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get education => $composableBuilder(
    column: $table.education,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get governorate => $composableBuilder(
    column: $table.governorate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get school => $composableBuilder(
    column: $table.school,
    builder: (column) => ColumnFilters(column),
  );
}

class $$StudentsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $StudentsTableTable> {
  $$StudentsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nationalId => $composableBuilder(
    column: $table.nationalId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get education => $composableBuilder(
    column: $table.education,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get governorate => $composableBuilder(
    column: $table.governorate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get school => $composableBuilder(
    column: $table.school,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$StudentsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $StudentsTableTable> {
  $$StudentsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nationalId => $composableBuilder(
    column: $table.nationalId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get education =>
      $composableBuilder(column: $table.education, builder: (column) => column);

  GeneratedColumn<String> get governorate => $composableBuilder(
    column: $table.governorate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get school =>
      $composableBuilder(column: $table.school, builder: (column) => column);
}

class $$StudentsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StudentsTableTable,
          StudentsTableData,
          $$StudentsTableTableFilterComposer,
          $$StudentsTableTableOrderingComposer,
          $$StudentsTableTableAnnotationComposer,
          $$StudentsTableTableCreateCompanionBuilder,
          $$StudentsTableTableUpdateCompanionBuilder,
          (
            StudentsTableData,
            BaseReferences<
              _$AppDatabase,
              $StudentsTableTable,
              StudentsTableData
            >,
          ),
          StudentsTableData,
          PrefetchHooks Function()
        > {
  $$StudentsTableTableTableManager(_$AppDatabase db, $StudentsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StudentsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StudentsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StudentsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> nationalId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> year = const Value.absent(),
                Value<String> education = const Value.absent(),
                Value<String> governorate = const Value.absent(),
                Value<String> school = const Value.absent(),
              }) => StudentsTableCompanion(
                id: id,
                nationalId: nationalId,
                name: name,
                year: year,
                education: education,
                governorate: governorate,
                school: school,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> nationalId = const Value.absent(),
                required String name,
                required String year,
                required String education,
                required String governorate,
                required String school,
              }) => StudentsTableCompanion.insert(
                id: id,
                nationalId: nationalId,
                name: name,
                year: year,
                education: education,
                governorate: governorate,
                school: school,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$StudentsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StudentsTableTable,
      StudentsTableData,
      $$StudentsTableTableFilterComposer,
      $$StudentsTableTableOrderingComposer,
      $$StudentsTableTableAnnotationComposer,
      $$StudentsTableTableCreateCompanionBuilder,
      $$StudentsTableTableUpdateCompanionBuilder,
      (
        StudentsTableData,
        BaseReferences<_$AppDatabase, $StudentsTableTable, StudentsTableData>,
      ),
      StudentsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$StudentsTableTableTableManager get studentsTable =>
      $$StudentsTableTableTableManager(_db, _db.studentsTable);
}

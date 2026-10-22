import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

// --- الجداول الثابتة (Local Lookup Tables) ---

// 1. جدول السنة (Sana)
class SanasTable extends Table {
  IntColumn get idSana => integer()(); // كود السنة رقمين (مثال: 26)
  IntColumn get sana => integer()();   // كود السنة 4 ارقام (مثال: 2026)

  @override
  Set<Column> get primaryKey => {idSana};
}

// 2. جدول الإدارة (Edara)
class EdarasTable extends Table {
  IntColumn get idEdara => integer()(); // من 1 إلى 9
  TextColumn get edara => text()();      // من العدوة إلى ديرمواس
  TextColumn get loc => text().nullable()(); // اللوكيشن للبث

  @override
  Set<Column> get primaryKey => {idEdara};
}

// 3. جدول مسار التعليم (Row)
class RowsTable extends Table {
  IntColumn get idRow => integer()();
  TextColumn get rowName => text()();
  IntColumn get idSana => integer().references(SanasTable, #idSana)();

  @override
  Set<Column> get primaryKey => {idRow, idSana};
}

// --- الجداول الديناميكية والتفصيلية ---

// 7. جدول الشعب أو الأقسام (RowCase)
class RowCasesTable extends Table {
  IntColumn get idCase => integer()();
  IntColumn get idSana => integer().references(SanasTable, #idSana)();
  TextColumn get caseName => text()();
  IntColumn get idRow => integer()();

  @override
  Set<Column> get primaryKey => {idCase, idSana};
}

// 8. جدول المدارس (School)
class SchoolsTable extends Table {
  IntColumn get idSchool => integer()();
  TextColumn get schoolName => text()();
  IntColumn get idCase => integer()();
  TextColumn get caseName => text().nullable()();
  TextColumn get englishSchool => text().nullable()();

  @override
  Set<Column> get primaryKey => {idSchool};
}

// 4. الجدول الرئيسي للأسماء (Names)
class StudentNamesTable extends Table {
  IntColumn get stuId => integer().autoIncrement()();
  TextColumn get pf => text()(); // Pass / Fail
  IntColumn get idSana => integer().references(SanasTable, #idSana)();
  IntColumn get idEdara => integer().references(EdarasTable, #idEdara)();
  IntColumn get idRow => integer()();
  IntColumn get idSchool => integer().references(SchoolsTable, #idSchool)();
  IntColumn get idCase => integer()();
  
  RealColumn get total => real()();
  TextColumn get nat => text().nullable().withLength(min: 14, max: 14)(); // الرقم القومي
  TextColumn get no => text()(); // رقم الجلوس
  TextColumn get name => text()(); // اسم الطالب
  
  TextColumn get systemType => text().nullable()(); // انتظام/منازل/خدمات
  TextColumn get round => text().nullable()(); // دور أول/دور ثاني
  RealColumn get maxTotal => real().nullable()();
  TextColumn get translation => text().nullable()();
}

// 6. جدول المواد/الموضوعات (Subject)
class SubjectsTable extends Table {
  IntColumn get idSubject => integer()();
  IntColumn get idCase => integer()();
  IntColumn get idSana => integer().references(SanasTable, #idSana)();
  TextColumn get caseName => text()();
  TextColumn get subSubject => text().nullable()();
  TextColumn get subjectName => text()();
  RealColumn get maxScore => real()();
  RealColumn get minScore => real()();
  TextColumn get translation => text().nullable()();

  @override
  Set<Column> get primaryKey => {idSubject, idSana};
}

// 5. جدول الدرجات (Score)
class ScoresTable extends Table {
  IntColumn get stuId => integer().references(StudentNamesTable, #stuId)();
  IntColumn get idSubject => integer()();
  RealColumn get score => real()();

  @override
  Set<Column> get primaryKey => {stuId, idSubject};
}

// --- مشغل قاعدة البيانات ---

@DriftDatabase(tables: [
  SanasTable,
  EdarasTable,
  RowsTable,
  RowCasesTable,
  SchoolsTable,
  StudentNamesTable,
  SubjectsTable,
  ScoresTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: (m, from, to) async {
        for (final table in allTables) {
          await m.drop(table);
          await m.create(table);
        }
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'student_program.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
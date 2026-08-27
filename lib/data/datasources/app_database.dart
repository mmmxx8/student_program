import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';


// 1. Table Schema definition
// Remove whatsappNumber column from StudentsTable
class StudentsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nationalId => text().nullable().withLength(min: 14, max: 14)();
  TextColumn get name => text()();
  TextColumn get year => text()();
  TextColumn get education => text()();
  TextColumn get governorate => text()();
  TextColumn get school => text()();
}

// 2. Database Class
@DriftDatabase(tables: [StudentsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  // Handles schema upgrades during development by recreating tables automatically
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: (m, from, to) async {
        // Drop all existing tables and recreate them for the new schema
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
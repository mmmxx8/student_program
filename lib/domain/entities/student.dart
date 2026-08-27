import 'package:drift/drift.dart';
import '../../data/datasources/app_database.dart';

class Student {
  final int? id;
  final String? nationalId;
  final String name;
  final String year;
  final String education;
  final String governorate;
  final String school;

  Student({
    this.id,
    this.nationalId,
    required this.name,
    required this.year,
    required this.education,
    required this.governorate,
    required this.school,
  });

  factory Student.fromDrift(StudentsTableData data) {
    return Student(
      id: data.id,
      nationalId: data.nationalId,
      name: data.name,
      year: data.year,
      education: data.education,
      governorate: data.governorate,
      school: data.school,
    );
  }

  StudentsTableCompanion toDriftCompanion() {
    return StudentsTableCompanion.insert(
      nationalId: Value(nationalId),
      name: name,
      year: year,
      education: education,
      governorate: governorate,
      school: school,
    );
  }
}
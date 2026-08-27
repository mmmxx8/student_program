import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:student_program/core/app_theme.dart';
import 'package:student_program/data/datasources/app_database.dart';
import 'package:student_program/data/repositories/student_repository_impl.dart';
import 'package:student_program/domain/repositories/student_repository.dart';
import 'package:student_program/presentation/first_screen.dart';

late final StudentRepository studentRepository;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = AppDatabase();
  studentRepository = StudentRepositoryImpl(db);
  await studentRepository.seedMockData();
  runApp(const StudentProgramApp());
}

class StudentProgramApp extends StatelessWidget {
  const StudentProgramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'برنامج الطلاب',
      debugShowCheckedModeBanner: false,
      
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      locale: const Locale('ar', 'EG'),
      supportedLocales: const [
        Locale('ar', 'EG'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      home: const FirstScreen(),
    );
  }
}
// lib/core/di/injection.dart
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:student_program/data/datasources/app_database.dart';
import 'package:student_program/data/repositories/student_repository_impl.dart';
import 'package:student_program/domain/repositories/student_repository.dart';

final getIt = GetIt.instance;

const String _kSupabaseUrl = 'https://hjqcncrqyotgjidbzzmx.supabase.co';
const String _kSupabaseKey = 'sb_publishable_ZMCjWXxPBetSDFyPo0Vibg_b9w6sOKF';

Future<void> initDependencies() async {
  // 1. Register Local Drift Database Singleton (SQLite)
  final localDatabase = AppDatabase();
  getIt.registerSingleton<AppDatabase>(localDatabase);

  // 2. Initialize Supabase safely (fails gracefully with mock credentials)
  SupabaseClient? supabaseClient;
  try {
    await Supabase.initialize(
      url: _kSupabaseUrl,
      anonKey: _kSupabaseKey,
    );
    supabaseClient = Supabase.instance.client;
  } catch (e) {
    // If initialization fails or format is invalid, fallback to dummy instance
    supabaseClient = null;
  }

  // Define client instance explicitly
  final SupabaseClient client =
      supabaseClient ?? SupabaseClient(_kSupabaseUrl, _kSupabaseKey);

  // Register SupabaseClient in GetIt
  getIt.registerSingleton<SupabaseClient>(client);

  final StudentRepositoryImpl repositoryImpl = StudentRepositoryImpl(
    localDatabase: localDatabase,
    supabase: client,
  );
  getIt.registerSingleton<StudentRepository>(repositoryImpl);
}
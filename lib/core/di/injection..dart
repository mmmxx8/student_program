// lib/core/di/injection.dart
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:student_program/data/datasources/app_database.dart';
import 'package:student_program/data/repositories/student_repository_impl.dart';
import 'package:student_program/domain/repositories/student_repository.dart';

final getIt = GetIt.instance;

// TODO: Replace with real Supabase credentials once database invite arrives
const String _kDummySupabaseUrl = 'https://xyzcompany.supabase.co';
const String _kDummySupabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.dummy_key';

Future<void> initDependencies() async {
  // 1. Register Local Drift Database Singleton (SQLite)
  final localDatabase = AppDatabase();
  getIt.registerSingleton<AppDatabase>(localDatabase);

  // 2. Initialize Supabase safely (fails gracefully with mock credentials)
  SupabaseClient? supabaseClient;
  try {
    await Supabase.initialize(
      url: _kDummySupabaseUrl,
      anonKey: _kDummySupabaseKey,
    );
    supabaseClient = Supabase.instance.client;
  } catch (e) {
    // If initialization fails or format is invalid, fallback to dummy instance
    supabaseClient = null;
  }

  // Define client instance explicitly
  final SupabaseClient client =
      supabaseClient ?? SupabaseClient(_kDummySupabaseUrl, _kDummySupabaseKey);

  // Register SupabaseClient in GetIt
  getIt.registerSingleton<SupabaseClient>(client);

  // 3. Instantiate StudentRepositoryImpl with local DB and Supabase client
  //TODO: remove this and seed real data
  final StudentRepositoryImpl repositoryImpl = StudentRepositoryImpl(
    localDatabase: localDatabase,
    supabase: client,
  );

  // 4. Seed local lookup tables (Years, Edaras, Rows) so dropdowns populate offline
  await repositoryImpl.seedMockData();

  // 5. Register Repository Interface in GetIt
  getIt.registerSingleton<StudentRepository>(repositoryImpl);
}
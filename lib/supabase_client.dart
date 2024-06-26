// supabase_client.dart
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://hjngxfhyjkmmqpixbigl.supabase.co';
const supabaseKey = String.fromEnvironment('SUPABASE_KEY');

class SupabaseClientManager {
  static final SupabaseClientManager _instance =
      SupabaseClientManager._internal();
  late SupabaseClient client;

  SupabaseClientManager._internal();

  factory SupabaseClientManager() {
    return _instance;
  }

  void initSupabase() {
    client = SupabaseClient(supabaseUrl,
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhqbmd4Zmh5amttbXFwaXhiaWdsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0MTU2NDgsImV4cCI6MjAzNDk5MTY0OH0.YIaeHWrfBaxF9m7bGVZt146UEBxUTVx85fDzSo4049w");
  }
}

final supabaseManager = SupabaseClientManager();

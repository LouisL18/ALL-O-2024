import 'package:supabase/supabase.dart';

class SupabaseProvider {
  static final SupabaseProvider _singleton = SupabaseProvider._();
  late final SupabaseClient client;

  factory SupabaseProvider() {
    return _singleton;
  }

  SupabaseProvider._() {
    client = SupabaseClient(
      'https://kfkfojvqviylixzslfel.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imtma2ZvanZxdml5bGl4enNsZmVsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MTIzMTMsImV4cCI6MjAyNTk4ODMxM30.SZnBby97Je8OeVQFToiY1mJcTmkReKKQFGiyb74T1yY',
    );
  }
}

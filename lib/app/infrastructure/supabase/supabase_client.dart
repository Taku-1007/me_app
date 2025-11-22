import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class SupabaseClient {
  static Future<void> initialize({
    required String url,
    required String anonKey,
  }) async {
    await supabase.Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );
  }

  static supabase.Supabase get instance => supabase.Supabase.instance;

  static supabase.GoTrueClient get auth => instance.client.auth;

  static supabase.SupabaseClient get database => instance.client;

  static supabase.Supabase get supabaseInstance => instance;

  /// Realtimeチャンネルを作成
  static supabase.RealtimeChannel channel(String name) =>
      instance.client.channel(name);
}

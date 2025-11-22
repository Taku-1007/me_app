import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me_app/app/application/notifier/profile_notifier.dart';
import 'package:me_app/app/infrastructure/supabase/supabase_client.dart' as app;
import 'package:supabase_flutter/supabase_flutter.dart';

/// プロフィールのリアルタイム更新を監視
final profileRealtimeProvider = Provider<void>((ref) {
  final profileNotifier = ref.read(profileNotifierProvider.notifier);
  
  // Supabase Realtimeでプロフィール変更を監視
  final profileChannel = app.SupabaseClient.channel('profiles_changes');
  
  profileChannel
      .onPostgresChanges(
        event: PostgresChangeEvent.all,
        schema: 'public',
        table: 'profiles',
        callback: (payload) {
          if (payload.newRecord != null) {
            final profileId = payload.newRecord!['id'] as String;
            profileNotifier.loadProfile(profileId);
          }
        },
      )
      .onPostgresChanges(
        event: PostgresChangeEvent.all,
        schema: 'public',
        table: 'skills',
        callback: (payload) {
          if (payload.newRecord != null) {
            final profileId = payload.newRecord!['profile_id'] as String;
            profileNotifier.loadProfile(profileId);
          }
        },
      )
      .onPostgresChanges(
        event: PostgresChangeEvent.all,
        schema: 'public',
        table: 'careers',
        callback: (payload) {
          if (payload.newRecord != null) {
            final profileId = payload.newRecord!['profile_id'] as String;
            profileNotifier.loadProfile(profileId);
          }
        },
      )
      .onPostgresChanges(
        event: PostgresChangeEvent.all,
        schema: 'public',
        table: 'projects',
        callback: (payload) {
          if (payload.newRecord != null) {
            final profileId = payload.newRecord!['profile_id'] as String;
            profileNotifier.loadProfile(profileId);
          }
        },
      )
      .subscribe();

  // クリーンアップ
  ref.onDispose(() {
    profileChannel.unsubscribe();
  });
});


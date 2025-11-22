import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me_app/app/application/notifier/profile_notifier.dart';
import 'package:me_app/app/application/notifier/profile_realtime_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileNotifierProvider);

    // TODO: 実際のプロフィールIDを取得する（認証実装後）
    // 注意: データベースのidカラムがUUID型の場合、有効なUUID形式を使用する必要があります
    // 例: '550e8400-e29b-41d4-a716-446655440000'
    // 現在は空文字列にして、エラー時に適切なメッセージを表示します
    const testProfileId = '96bdc78b-ce82-45e5-bfdd-ee8d0b195b51';

    // リアルタイム更新を有効化（一度だけ初期化）
    ref.watch(profileRealtimeProvider);

    // 初回ロード時のみデータを取得（無限ループを防ぐ）
    // プロフィールIDが空の場合はロードをスキップ
    if (testProfileId.isNotEmpty && 
        !profileState.hasLoaded && 
        !profileState.isLoading) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // 念のため再度チェック（他の場所から既にロードが開始されている可能性がある）
        final currentState = ref.read(profileNotifierProvider);
        if (!currentState.isLoading && !currentState.hasLoaded) {
          ref.read(profileNotifierProvider.notifier).loadProfile(testProfileId);
        }
      });
    }

    if (profileState.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (profileState.error != null || testProfileId.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  testProfileId.isEmpty 
                      ? Icons.info_outline 
                      : Icons.error_outline,
                  size: 64,
                  color: testProfileId.isEmpty 
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.error,
                ),
                const SizedBox(height: 16),
                Text(
                  testProfileId.isEmpty
                      ? 'Profile ID not configured'
                      : 'Error: ${profileState.error}',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  testProfileId.isEmpty
                      ? 'Please set a valid UUID profile ID in home_page.dart\n\nExample: \'550e8400-e29b-41d4-a716-446655440000\''
                      : 'An error occurred while loading the profile.',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                if (testProfileId.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: profileState.isLoading
                        ? null
                        : () {
                            ref
                                .read(profileNotifierProvider.notifier)
                                .loadProfile(testProfileId, forceReload: true);
                          },
                    child: profileState.isLoading
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('Retry'),
                  ),
                ],
              ],
            ),
          ),
        ),
      );
    }

    final profile = profileState.profile;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: profile == null
          ? const Center(
              child: Text('No profile found'),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // プロフィール基本情報
                  if (profile.avatarUrl != null)
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(profile.avatarUrl!),
                    ),
                  const SizedBox(height: 16),
                  Text(
                    profile.name ?? 'No name',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  if (profile.bio != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      profile.bio!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                  const SizedBox(height: 24),
                  // スキル
                  Text(
                    'Skills',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  if (profileState.skills.isEmpty)
                    const Text('No skills added yet')
                  else
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: profileState.skills
                          .map(
                            (skill) => Chip(
                              label: Text(skill.name),
                            ),
                          )
                          .toList(),
                    ),
                  const SizedBox(height: 24),
                  // 経歴
                  Text(
                    'Career',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  if (profileState.careers.isEmpty)
                    const Text('No career history added yet')
                  else
                    ...profileState.careers.map(
                      (career) => Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title: Text(career.companyName),
                          subtitle: Text(career.position ?? ''),
                          trailing: career.isCurrent
                              ? const Chip(
                                  label: Text('Current'),
                                  labelStyle: TextStyle(fontSize: 12),
                                )
                              : null,
                        ),
                      ),
                    ),
                  const SizedBox(height: 24),
                  // プロジェクト
                  Text(
                    'Projects',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  if (profileState.projects.isEmpty)
                    const Text('No projects added yet')
                  else
                    ...profileState.projects.map(
                      (project) => Card(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title: Text(project.name),
                          subtitle: project.description != null
                              ? Text(project.description!)
                              : null,
                          trailing: project.url != null
                              ? IconButton(
                                  icon: const Icon(Icons.open_in_new),
                                  onPressed: () {
                                    // TODO: URLを開く
                                  },
                                )
                              : null,
                        ),
                      ),
                    ),
                ],
              ),
            ),
    );
  }
}

# me_app

.me プロジェクトのFlutterアプリケーション

## 技術スタック

- Flutter 3.7.2+
- Dart
- Riverpod 3.0 (状態管理)
- GoRouter (ルーティング)
- Supabase Flutter (データベース・ストレージ)
- Freezed (データモデル)

## セットアップ

### 1. 依存関係のインストール

```bash
flutter pub get
```

### 2. Supabase設定

`lib/core/config/supabase_config.dart`を編集して、SupabaseのURLとAnon Keyを設定してください：

```dart
class SupabaseConfig {
  static const String url = 'YOUR_SUPABASE_URL';
  static const String anonKey = 'YOUR_SUPABASE_ANON_KEY';
}
```

### 3. コード生成

Freezedのコード生成を実行：

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## プロジェクト構造

```
lib/
  ├── app/               # アプリケーション実装
  │   ├── core/          # コア機能（設定、ユーティリティ）
  │   ├── domain/        # ドメイン層
  │   │   ├── entity/    # エンティティ（Freezed）
  │   │   └── repository/# リポジトリインターフェース
  │   ├── infrastructure/# インフラ層
  │   │   ├── supabase/  # Supabaseクライアント
  │   │   └── repository/# リポジトリ実装
  │   ├── application/   # アプリケーション層
  │   │   └── notifier/  # 状態管理（Riverpod）
  │   ├── presentation/  # プレゼンテーション層
  │   │   ├── page/      # ページ
  │   │   ├── component/ # コンポーネント
  │   │   └── navigation/# ルーティング
  │   └── main.dart      # エントリーポイント
  ├── gen/               # 生成ファイル（assets等）
  └── main.dart          # エントリーポイント（app/main.dartをエクスポート）
```

## 開発

```bash
flutter run
```

## Supabaseテーブル

Supabaseテーブルの作成については、`../me_web/SUPABASE_SETUP.md`を参照してください。

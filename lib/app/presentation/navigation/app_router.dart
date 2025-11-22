import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me_app/app/presentation/page/home_page.dart';
import 'package:me_app/app/presentation/page/login_page.dart';
import 'package:me_app/app/presentation/page/main_page.dart';
import 'package:me_app/app/presentation/page/share_page.dart';
import 'package:me_app/app/presentation/page/setting_page.dart';

// 各ブランチ用のNavigatorKey
final homeNavigatorKey = GlobalKey<NavigatorState>();
final shareNavigatorKey = GlobalKey<NavigatorState>();
final settingNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    // ログインページ
    GoRoute(
      path: '/',
      name: RouteNames.login,
      builder: (context, state) => const LoginPage(),
    ),
    // ボトムナビゲーションを持つメイン画面
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainPage(navigationShell: navigationShell);
      },
      branches: [
        // Home ブランチ
        StatefulShellBranch(
          navigatorKey: homeNavigatorKey,
          routes: [
            GoRoute(
              path: '/home',
              name: RouteNames.homePage,
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        // Share ブランチ
        StatefulShellBranch(
          navigatorKey: shareNavigatorKey,
          routes: [
            GoRoute(
              path: '/share',
              name: RouteNames.share,
              builder: (context, state) => const SharePage(),
            ),
          ],
        ),
        // Setting ブランチ
        StatefulShellBranch(
          navigatorKey: settingNavigatorKey,
          routes: [
            GoRoute(
              path: '/setting',
              name: RouteNames.setting,
              builder: (context, state) => const SettingPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class RouteNames {
  static const login = 'login';
  static const homePage = 'home';
  static const share = 'share';
  static const setting = 'setting';
}












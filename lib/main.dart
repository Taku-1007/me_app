import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:me_app/presentation/page/login_page.dart';

void main() {
  runApp(const ProviderScope(child: LoginPage()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(home: LoginPage());
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:me_app/gen/assets.gen.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Text(
                      '.me',
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'エンジニアとしての自分を、リンクひとつで伝えよう。',
                      style: TextStyle(fontSize: 8),
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset(Assets.svgs.androidLightSqSU),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

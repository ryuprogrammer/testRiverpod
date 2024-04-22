import 'package:flutter/material.dart';
import 'package:testriverpod/myhomepage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// プロバイダの定義
/// シンプルに状態を管理することができるStateProviderを定義
final countProvider = StateProvider((ref) => 0);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

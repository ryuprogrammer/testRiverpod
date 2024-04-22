import 'package:flutter/material.dart';
import 'package:testriverpod/myhomepage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// git の草テスト
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

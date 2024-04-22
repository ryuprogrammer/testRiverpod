import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpod/main.dart';

// 値の参照方法
/// プロバイダを利用する
/// ↓
/// ConsumerWidgetを継承したWidgetを使用する！
class MySecondPage extends ConsumerWidget {
  const MySecondPage({super.key});
  @override
  // WidgetRefクラスのオブジェクトを取得
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('ボタンを押した回数'),
                Text('${ref.watch(countProvider)}'),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('前のページ'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(countProvider.notifier).state--;
        },
        child: const Text('マイナスボタン'),
      ),
    );
  }
}

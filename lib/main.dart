import 'package:flutter/material.dart';
import 'memoScreen.dart';

void main() {
// 最初に表示するWidget
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Todo App',
      // リスト一覧画面を表示
      home: memoScreen(),
    );
  }
}

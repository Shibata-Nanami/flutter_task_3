/// メモ追加画面用のWidget
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TodoAddPage extends StatefulWidget {
  const TodoAddPage({
    super.key,
    // required this.menuName, //パラメータを指定する際に必要となる
  });

  ///パラメータを指定する際に必要となる
  // final String menuName;

  @override
  State<TodoAddPage> createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'メモ追加',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /// テキスト入力
            const TextField(),
            const SizedBox(height: 8),
            SizedBox(
              width: 150,
              height: 70,

              /// リスト追加ボタン
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
                onPressed: () {},
                child: const Text('追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              child: GestureDetector(
                /// ボタンをクリックした時の処理
                onTap: () {
                  /// "pop"で前の画面に戻る
                  context.pop();
                },
                child: const Text('リスト追加画面（クリックで戻る）'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
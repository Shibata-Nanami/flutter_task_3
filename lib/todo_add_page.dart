/// メモ追加画面用のWidget
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TodoAddPage extends StatefulWidget {
  const TodoAddPage({super.key});

  @override
  State<TodoAddPage> createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  final TextEditingController _controller = TextEditingController();

  // int _counter = 3;

  // //　追加ボタンが押されたときに実行する関数
  // void _addItem(String inputtext) {
  //   setState(() {
  //     _counter++;
  //     Model.add({"id": _counter, "text": inputtext});
  //   });
  // }

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
          children: [
            /// テキスト入力フォーム

            SizedBox(
              width: 300,
              child: TextFormField(
                controller: _controller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

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
                onPressed: () {
                  print(_controller.text);
                  context.go('/', extra: {
                    'name': _controller.text,
                  });
                  // _controller.clear();
                  // context.go('/');
                  //pop:前のページに遷移するメソッド
                },
                child: const Text('追加', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

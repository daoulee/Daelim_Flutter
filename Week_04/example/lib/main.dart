import 'package:example/ui/pages/todo_page.dart';
import 'package:flutter/material.dart';

// [수정] 안 쓰는 default_page 임포트는 지우거나 경로를 맞춰야 합니다.
// 지금은 TodoPage가 메인이니 아래처럼 설정하세요.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Todo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TodoPage(), // [수정] TodoPage를 시작화면으로!
    );
  }
}

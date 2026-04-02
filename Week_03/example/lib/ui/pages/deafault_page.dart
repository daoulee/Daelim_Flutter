import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.home), title: Text('예제 화면')),
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.yellow)),
          Expanded(child: Container(color: Colors.blue)),
          Expanded(child: Container(color: Colors.red)),
        ],
      ),
    );
  }
}

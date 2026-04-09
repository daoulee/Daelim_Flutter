import 'package:flutter/material.dart';
import 'package:flutter_application_1/UI/pages/todo/bottom_navigation/bottom_nevigation.dart';
import 'package:flutter_application_1/UI/pages/todo/widget/filter_row.dart';
import 'package:flutter_application_1/UI/pages/todo/widget/progress_card.dart';
import 'package:flutter_application_1/UI/pages/todo/widget/title_content.dart';
import 'package:flutter_application_1/UI/pages/todo/widget/todo_list.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 10,
            children: [
              Header(),

              ProgressCard(),

              FilterRow(),
              _buildTodoTitle(),
              TodoList(),

              BottomNevigation(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget _buildTodoTitle() {
  return Text(
    '오늘 할 일',
    style: TextStyle(color: Color(0xff171717), fontSize: 16, fontWeight: .bold),
  );
}

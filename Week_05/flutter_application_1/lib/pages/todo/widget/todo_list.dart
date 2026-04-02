import 'package:flutter/material.dart';
import 'package:flutter_application_1/enum/process.dart';
import 'package:intl/intl.dart';

import '../todo_page.dart';
import 'circle_checkbox.dart';
import 'process_badge.dart';

class TodoList extends StatelessWidget {
  final List<TodoItem> todos;
  final ValueChanged<TodoItem> onToggle;

  const TodoList({super.key, required this.todos, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: todos.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final data = todos[index];
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ), // BoxDecoration
          child: Row(
            spacing: 12,
            children: [
              // 체크박스
              CircleCheckBox(
                value: data.process == Process.done,
                onChanged: null,
              ), // CircleCheckBox
              // 할 일 텍스트
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ), // TextStyle
                    ), // Text
                    Text(
                      '${data.filter} · ${DateFormat().format(data.time)}',
                      style: const TextStyle(color: Colors.grey), // TextStyle
                    ), // Text
                  ],
                ),
              ), // Expanded
              // 진행 뱃지
              ProcessBadge(process: data.process),
            ],
          ), // Row
        ); // Container
      },
    ); // ListView.separated
  }
}

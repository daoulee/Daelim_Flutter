import 'package:flutter/material.dart';

import '../../../enum/process.dart';
import 'widget/filter_row.dart';
import 'widget/header.dart';
import 'widget/progress_card.dart';
import 'widget/todo_list.dart';

class TodoItem {
  final String title;
  final String filter;
  final DateTime time;
  Process process;
  bool isDone;

  TodoItem({
    required this.title,
    required this.filter,
    required this.time,
    required this.process,
    this.isDone = false,
  });
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  int _selectedCategory = 0;
  final List<String> _categories = ['전체', '업무', '개인', '건강'];

  final List<TodoItem> _todos = [
    TodoItem(
      title: '프로젝트 기획서 작성',
      filter: '업무',
      time: DateTime.now(),
      process: Process.done,
      isDone: true,
    ),
    TodoItem(
      title: '팀 미팅 준비',
      filter: '업무',
      time: DateTime.now(),
      process: Process.doing,
    ),
    TodoItem(
      title: '운동 30분',
      filter: '건강',
      time: DateTime.now(),
      process: Process.todo,
    ),
    TodoItem(
      title: '독서 1시간',
      filter: '개인',
      time: DateTime.now(),
      process: Process.todo,
    ),
  ];

  int get _doneCount => _todos.where((t) => t.isDone).length;
  double get _progress => _todos.isEmpty ? 0 : _doneCount / _todos.length;

  List<TodoItem> get _filteredTodos => _selectedCategory == 0
      ? _todos
      : _todos
            .where((t) => t.filter == _categories[_selectedCategory])
            .toList();

  String get _listTitle {
    if (_selectedCategory == 0) return '오늘 할 일';
    return '${_categories[_selectedCategory]} 할 일';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Header(),
              const SizedBox(height: 24),
              ProgressCard(
                progress: _progress,
                total: _todos.length,
                doneCount: _doneCount,
              ),
              const SizedBox(height: 24),
              FilterRow(
                categories: _categories,
                selectedIndex: _selectedCategory,
                onSelected: (index) =>
                    setState(() => _selectedCategory = index),
              ),
              const SizedBox(height: 24),
              Text(
                _listTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              TodoList(
                todos: _filteredTodos,
                onToggle: (todo) => setState(() => todo.isDone = !todo.isDone),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

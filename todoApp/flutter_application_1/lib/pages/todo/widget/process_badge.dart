import 'package:flutter/material.dart';

import '../../../../enum/process.dart';

class ProcessBadge extends StatelessWidget {
  final Process process;

  const ProcessBadge({super.key, required this.process});

  String get _label {
    switch (process) {
      case Process.done:
        return '완료';
      case Process.doing:
        return '진행중';
      case Process.todo:
        return '예정';
    }
  }

  Color get _backgroundColor {
    switch (process) {
      case Process.done:
        return const Color(0xFFE8F5E9);
      case Process.doing:
        return const Color(0xFFE3F2FD);
      case Process.todo:
        return const Color(0xFFFCE4EC);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ), // BoxDecoration
      child: Text(
        _label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ), // TextStyle
      ), // Text
    ); // Container
  }
}

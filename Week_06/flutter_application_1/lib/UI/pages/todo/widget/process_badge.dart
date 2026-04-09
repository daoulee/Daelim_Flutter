import 'package:flutter/material.dart';
import 'package:flutter_application_1/enum/process.dart';

class ProcessBadge extends StatelessWidget {
  final Process process;
  const ProcessBadge({super.key, required this.process});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: .all(.circular(50)),
        color: process.secondaryColor,
      ),
      child: Text(
        process.title,
        style: TextStyle(fontSize: 11, color: process.primaryColor),
      ),
    );
  }
}

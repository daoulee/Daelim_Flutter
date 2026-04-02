import 'package:flutter/material.dart';
import 'package:flutter_application_1/enum/process.dart';

class CircleCheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const CircleCheckBox({
    super.key,
    this.value = false,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: .circle,
        color: value ? Process.done.primaryColor : Colors.grey[300],
        border: value ? null : .all(color: Colors.grey),
      ), // BoxDecoration
    ); // Container
  }
}

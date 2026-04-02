import 'package:flutter/material.dart';
import 'package:flutter_application_1/enum/process.dart';

class NavButton extends StatelessWidget {
  final bool selected;
  final String text;
  final IconData icon;

  const NavButton({
    super.key,
    this.selected = false,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? Process.done.primaryColor : null,
        borderRadius: BorderRadius.circular(50),
      ), // BoxDecoration
    ); // Container
  }
}

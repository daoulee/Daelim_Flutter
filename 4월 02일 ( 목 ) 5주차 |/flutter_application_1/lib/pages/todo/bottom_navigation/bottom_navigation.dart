import 'package:flutter/material.dart';

import '../widget/nav_buttton.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        // BoxDecoration
        border: Border.all(color: Colors.grey[300]!),
      ), // BoxDecoration
      child: Row(
        children:
            [
                  (text: '홈', icon: Icons.home),
                  (text: '캘린더', icon: Icons.calendar_today_outlined),
                  (text: '통계', icon: Icons.bar_chart_outlined),
                  (text: '프로필', icon: Icons.person_outline),
                ]
                .map(
                  (e) => Expanded(
                    child: NavButton(icon: e.icon, text: e.text), // NavButton
                  ), // Expanded
                )
                .toList(),
      ), // Row
    ); // Container
  }
}

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '안녕하세요',
                  style: TextStyle(color: Color(0xff171717), fontSize: 14),
                ),
                Icon(Icons.waving_hand_outlined),
              ],
            ),
            Text('나의 할 일', style: TextStyle(color: Colors.black, fontSize: 30)),
          ],
        ),

        Container(
          padding: .all(10),

          decoration: BoxDecoration(color: Colors.grey[300], shape: .circle),
          child: const Icon(Icons.notifications_outlined, size: 36),
        ),
      ],
    );
  }
}

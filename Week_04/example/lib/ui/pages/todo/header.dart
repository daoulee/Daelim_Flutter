import 'package:flutter/material.dart';

class TitleContent extends StatelessWidget {
  const TitleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // [SpaceBetween] 텍스트와 아이콘을 양 끝으로 밀어내기
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // // 타이틀 영역
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('안녕하세요 👋', style: TextStyle(color: Color(0xFF71717A))),
            Text(
              '나의 할 일',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),

        // // 알람 아이콘
        const Icon(Icons.notifications_outlined, size: 35),
      ],
    );
  }
}

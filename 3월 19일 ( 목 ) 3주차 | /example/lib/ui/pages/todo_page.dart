// [수정] 파일이 lib/ui/pages/ 안에 있으므로 같은 폴더면 상대경로가 제일 안전합니다.
import 'todo/progress_card.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleContent(),
              const SizedBox(height: 30), // TODO: 완료
              const ProgressCard(), //
            ],
          ),
        ),
      ),
    );
  }
}

class TitleContent extends StatelessWidget {
  const TitleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('안녕하세요', style: TextStyle(color: Color(0xFF71717A))),
            Text(
              '나의 할 일',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.notifications_outlined, size: 36),
        ),
      ],
    );
  }
}

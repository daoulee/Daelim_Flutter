import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final titles = ['프로젝트 기획서 작성', '팀 미팅 준비', '운동 30분', '독서 1시간'];
    final subtitles = [
      '업무 · 오전 10:00',
      '업무 · 오후 2:00',
      '건강 · 오후 6:00',
      '개인 · 오후 9:00',
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      separatorBuilder: (context, index) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            spacing: 12,
            children: [
              // 체크박스
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.grey),
                ),
              ),

              // 할일 텍스트
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(titles[index]), Text(subtitles[index])],
                ),
              ),

              Container(width: 24, height: 24, color: Colors.red), // Container
            ],
          ), // Row
        ); // Container
      },
    );
  }
}

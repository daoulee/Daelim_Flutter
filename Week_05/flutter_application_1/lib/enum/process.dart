import 'package:flutter/material.dart';

enum Process { todo, doing, done }

extension ProcessExtension on Process {
  Color get primaryColor => switch (this) {
    .todo => const Color(0x20F472B6),
    .doing => const Color(0x2014B8A6),
    .done => const Color(0x208B5CF6),
  };

  Color get secondaryColor => switch (this) {
    .todo => const Color(0xFFF472B6),
    .doing => const Color(0xFF14B8A6),
    .done => const Color(0xFF8B5CF6),
  };

  String get title => switch (this) {
    .todo => '예정',
    .doing => '진행중',
    .done => '완료',
  };
}

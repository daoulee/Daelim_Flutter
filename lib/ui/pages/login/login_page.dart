import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:unitask/app/extension/sized_box_extension.dart';
import 'package:unitask/ui/common/label_text_filed.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(LucideIcons.graduationCap, size: 50),
          Text(
            'UniTask',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text('과제 관리를 스마트하게'),
          50.heightBox,
          const LabelTextFiled(
            label: 'Email',
            hintText: 'example@university.ac.kr',
            icon: LucideIcons.mail,
          ),
          20.heightBox,
          const LabelTextFiled(
            label: 'Password',
            hintText: '비밀번호를 입력해주세요',
            icon: LucideIcons.lockKeyhole,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: () {}, child: Text('비밀번호 찾기')),
          ),
          20.heightBox,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              child: const Text('로그인'),
            ),
          ),
          20.heightBox,
          const Row(
            children: [
              Expanded(child: Divider()),
              Text('또는', style: TextStyle(color: Colors.grey)),
              Expanded(child: Divider()),
            ],
          ),
          20.heightBox,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("계정이 없으신가요? "),
              TextButton(onPressed: () {}, child: Text("회원가입")),
            ],
          ),
        ],
      ),
    );
  }
}

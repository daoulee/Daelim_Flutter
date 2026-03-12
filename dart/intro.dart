void main() {
  //debugPrint("Hello World");
  print("Hello World");

  var map = <String, dynamic>{
    'a': 'A',
    'b': 'B',
    'c': 'C',
  }; // 만약 문자열이 아닌 정수 타입이 들어갈 경우 앱이 죽음 .

  /* 조건문
**switch 문 **
switch (score){
case 0:
  break;
case > 10:
  break;
default:
break;
}

** 람다 + switch 문 **
return switch ( score ) {
>= 50 => print('50점이상'),
< 50 => print("점수 모름 ")
}
**List**
int score =0;

var list = [1,2,3,4,5];



 ** if문 **
  if (score == 50) {
    print("A");
  } else if (score > 50) {
    print("B");
  } else {
    print("C");
  }
------------------------------
 ** for문
int score = 0;
  for (int i = 0; i <= 10; i++) {
    score++;
    print('잠수 : $score');
  }
------------------------------
** while문
  int count = 1; 
  while (count <= 5) {
    print('현재 카운트: $count');
    count++;
  }
  print('반복문 종료!');
}
------------------------------
 ** 람다 + 조건문 
  score == 50? print("A") : print("B");
*/
  /* 변수 
  int a = 0;
  double b = 0.0;
  String c = '0';
  bool d = true;
  */
}

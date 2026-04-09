## 대림대학교 모바일 통합 구현

### 2주차 ( 3월 12일 목 ) 
✏️ 수업 내용  <br>
1. .gitignore 사이트를 활용한 프로젝트에 알맞는 .gitignore 파일 생성 <br>
2. 마크다운을 활용해 Readme 파일 작성 .
3. pub.dev ( Flutter Lib 저장소 )
4. intro.dart 생성 후 map , list , int , String , Switch, for & while + (람다를 활용한) 등등의 반복문 기억 되새김질


### 3주차 ( 3월 19일 목 )
✏️ 수업 내용  <br>
1. UI 기초 구성법 학습 . ( Stateless vs Stateful)
2. 상태변경이 필요 없을 때에는 Staeless , 있는 경우 ful 사용
 2-1. stl 입력시 Stateless 위젯 생성 , stf 입력시 Stateful 위젯 선택가능
 2-2. Dangerous 존 -> State(OS 영역) , Safe 존 -> App 영역
3. 컨테이너는 const를 사용할 수 없음 . (색깔이 변하기 때문) , 그래서 다른 옵션들보다 속도가 느림 .
4. ".," 사용시 속성 

### 4주차 ( 3월 26일 목 ) 
✏️ 수업 내용 <br>
1. progress bar ( 진행률 표시줄 ) 구현
  ㄴ progress bar 의 43번 번 
  ㄴ " backgroundColor: Colors.white.withValues(alpha: 0.2)," 앞에 const를 뺀 이유는 
  ㄴ Colors.white << 이 자체가 Constructor 이기 때문에 const를 붙일 수 없음 . >>

### 5주차 ( 4월 2일 )
✏️ 수업 내용 <br>
1. bottom_navigation , process_badge 구현. <br>
<b>📍TO DO _  LIST : 다음 6 주차 수업 전까지 교수님이 주신 목업대로 완성해오기 ( AI 사용 X ) </b>

### 5주차 ( 4월 9일 ) 
✏️ 수업내내용 <br> 
1. UniTask (대학생용 과제 관리 앱 개발 프로젝트 S.1)

2. StatefulWidget vs StatelessWidget: <br>
2-1. 입력칸(TextField)처럼 화면이 바뀌는 게 있으면 <b>Stateful</b>, 변하지 않으면 <b>Stateless</b>

3. heightBox / widthBox extension: <br>
-> 20.heightBox 처럼 숫자에 .heightBox를 붙여 SizedBox를 간결하게 사용

4. Ligature 폰트 (FiraCode): <br>
-> -> => 같은 기호를 자동으로 예쁜 화살표로 변환해주는 폰트

5. pubspec.yaml의 ^: <br>
-> 메이저 버전은 고정하고 그 안에서 최신 버전을 자동으로 사용하는 버전 표기법
 
main() {
  // final과 const
  // 변수 값을 바뀌지 않게 하기 위해 사용
  String name1 = '유비';
  name1 = '장비';
  print(name1);

  final String name2 = '관우';      // 못 바꾸게 하겠다.
  // name2 = '조조';
  print(name2);

  const String name3 = '조자룡';
  // name3 = '조조';
  print(name3);

  // final과 const의 차이점
  // 컴파일 할때 final 실행되는 것
  final DateTime now1 = DateTime.now();
  print(now1);

  // 컴파일 하기 전에 const 셋팅하는 것
  // const DateTime now2 = DateTime.now();  // const로는 DateTime을 선언할 수 없다.
  // print(now2);

  








}
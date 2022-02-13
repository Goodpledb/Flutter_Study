void main() {
  // 문자열은 String, 문자열 첫글자는 대문자
  String str1 = '유비';
  String str2 = '장비';
  int num1 = 10;
  int num2 = 20;

  // 문자열 연결 방식으로 출력
  print(str1 + str2);
  print(str1 + " : " + str2);
  print(str1 + ' : ' + str2);

  // 문자열 보간법으로 출력
  print("str1 + str2");
  print("$str1 : $str2");       // 이렇게 쓰셔야 합니다.
  print('${str1} ${str2}');
  print('${str1} : ${str2}');

  // num1 + num2 = 30 >> 이렇게 출력하고 싶어요.
  print("num1 + num2 = $num1 + $num2");       // 주의
  print("num1 + num2 = ${num1 + num2}");      // 이렇게 쓰셔야 합니다.


}
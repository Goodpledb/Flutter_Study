void main() {
  // 변수 타입 선언자 
  // 정수는 int
  int intNum1 = 30;
  print(intNum1);

  int intNum2 = 20;
  print(intNum2);

  // 사칙연산
  print('****************');
  print("** 정수 사칙 연산 **");
  print(intNum1 + intNum2);
  print(intNum1 - intNum2);
  print(intNum1 * intNum2);
  print(intNum1 / intNum2);
  print(intNum1 ~/ intNum2);  // 나누기 정수값 출력(몫) 틸트~
  print(intNum1 % intNum2);   // 나머지 값
  print('****************');

  // 실수는 double
  double doubleNum1 = 1.5;
  double doubleNum2 = 0.2;

  print('****************');
  print("** 실수 사칙 연산 **");
  print(doubleNum1 + doubleNum2);
  print(doubleNum1 - doubleNum2);
  print(doubleNum1 * doubleNum2);
  print(doubleNum1 / doubleNum2);
  print('****************');


}
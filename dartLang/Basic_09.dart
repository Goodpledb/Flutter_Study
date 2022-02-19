main() {
  // 자동 증감 연산자
  int num = 0;
  print(num);

  num = num + 1;
  num += 1;
  num++;
  print(num);

  num = num - 1;
  num -= 1;
  num--;
  print(num);


  // Optional : Null Safety
  int? num1 = null;       // null을 수용한다는 의미 
  print(num1);

  num1 = 22;
  print(num1);


  // 조건 연산자
  int num2 = 10;
  int num3 = 5;

  print(num2 < num3);      // false
  print(num2 > num3);      // true
  print(num2 <= num3);     // false
  print(num2 >= num3);     // true
  print(num2 == num3);     // false
  print(num2 != num3);     // true

  print(num2 is int);     // true
  print(num2 is String);  // false
  print(num2 is bool);    // false


  // 논리 연산자
  bool result = 12 > 10 && 1 > 0;
  print(result);

  bool result2 = 10 > 5 || 1 > 2;
  print(result2);

}


main () {
  // 문자열 보간법
  String str1 = '유비';
  String str2 = '장비';

  print("str1?유비 + str2?장비 : $str1 value + $str2");
  print("$str1");
  print(str1);

  int intNum1 = 170;
  int intNum2 = 70;
  int result = intNum1 + intNum2;
  // 선언된 부분은 메모리에 올라가기 때문에 굳이 result 변수를 만들어서 메모리에 상주하면서 소비하기 때문에 비효율이 크다.
  // 편하게 코딩할 수 있지만 예전엔 CPU의 부담을 주지 않기 위해 했던 방식 
  // 요즘 앱들은 메모리가 부족하기 때문에 메모리를 효율적으로 관리하는 방식이 중요

  print("intNum1과 intNum2의 합은 ${intNum1 + intNum2} 입니다.");       // 좀 더 효율적인 방법
  print("intNum1과 intNum2의 합은 $result 입니다.");

}
main() {
  // 조건문
  int num1 = 10;

  if(num1 > 10) {
    print('입력된 숫자 $num1은 10보다 큰 수 입니다.');
  }
  
  if(num1 > 10) {
    print('입력된 숫자 $num1은 10보다 큰 수 입니다.');
  }
  else {
    print('입력된 숫자 $num1은 10보다 작거나 같은 수 입니다.');
  }

  if(num1 > 10) {
    print('입력된 숫자 $num1은 10보다 큰 수 입니다.');
  }
  else if(num1 < 10) {
    print('입력된 숫자 $num1은 10보다 작은 수 입니다.');
  } 
  else {
    print('입력된 숫자 $num1은 10과 같은 수 입니다.');
  }

  // Exercise
  // 입력된 숫자가 5의 배수 이면 '입력된 숫자 __는 5의 배수 입니다.'
  // 5의 배수가 아니면 '입력된 숫자 __는 5의 배수가 아니며 나머지 값은 __ 입니다.
  int num2 = 15;

  if(num2 % 5 == 0) {
    print('입력된 숫자 $num2는 5의 배수 입니다.');
  }
  else {
    print('입력된 숫자 $num2는 5의 배수가 아니며 나머지 값은 ${num2 % 5} 입니다.');
  }


  // Switch
  switch(num2 % 5) {
    case 0:
      print('입력된 숫자 $num2는 5의 배수 입니다.');
      break;
    default:
      print('입력된 숫자 $num2는 5의 배수가 아니며 나머지 값은 ${num2 % 5} 입니다.');
      break;
  }

  // Exercise : 점수를 받아 학점으로 표시하기 => if
  int score = 85;

  if(score >= 95) {
    print('당신의 학점은 A+ 입니다.');
  }
  else if(score >= 90) {
    print('당신의 학점은 A 입니다.');
  }
  else if(score >= 85) {
    print('당신의 학점은 B+ 입니다.');
  }
  else if(score >= 80) {
    print('당신의 학점은 B 입니다.');
  }
  else if(score >= 70) {
    print('당신의 학점은 C 입니다.');
  }
  else 
  {
    print('당신의 학점은 F 입니다.');
  }

  switch(score ~/ 10) {
    case 10:
      print('당신의 학점은 A 입니다.');
      break;
    case 9:
      print('당신의 학점은 A 입니다.');
      break;
    case 8 : 
      print('당신의 학점은 B 입니다.');
      break;
    case 7 :
      print('당신의 학점은 C 입니다.');
      break;     
    default :
      print('당신의 학점은 F 입니다.');
      break;
  }

  // 삼항 연산자
  bool isPublic = true;
  var visibility = isPublic ? 'public' : 'private' ;
  print(visibility);


}

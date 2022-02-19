main() {
  // -----------
  // for : 반복문
  // -----------
  for(int i=1; i<=10; i++) {
    print(i);
  }

  print("");

  // 1부터 10까지의 합계
  int sum = 0;  // 누적변수
  for(int i=0; i<=10; i++) {
    sum += i;
  }
  print("1부터 10까지의 합은 $sum입니다.");

  print("");

  // List를 반복문으로 처리하기
  List<int> numList = [1,3,5,7,9];

  for(int i=0; i<numList.length; i++) {
    print(numList[i]);
  }

  print("");

  // numList의 합계 구하기
  sum = 0;

  print(numList.length);

  for(int i=0; i<numList.length; i++) {   // 인덱스 위치로 이용
    sum += numList[i];
  }
  print("numList의 합은 $sum입니다.");

  sum = 0;
  for(int i in numList) {   // numList의 값이 넘어가는 것이다.
    sum += i;
  }
  print("numList의 합은 $sum입니다.");

  // ------
  // while
  // ------

  int number = 1;
  while(true) {   // 데이터의 범위를 잘 모를때
    print("while문 결과 : $number");
    number++;
    
    if(number > 10) {     // break 없으면 무한반복
      break;
    }
  }

  // do while
  number = 1;
  do {
    print(number);
    number++;
  }
  while(number <= 10);

  print("");

  // break와 continue
  for(int i=1; i<=100; i++) {
    if(i == 5) {
      break;
    }
    print(i);
  }

  print("");

  for(int i=1; i<=10; i++) {
    if(i == 5) {
      continue;
    }
    print(i);
  }



}
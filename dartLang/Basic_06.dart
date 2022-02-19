main() {
  // List Collection(배열)
  List threeKingdoms = [];     
  // Dynamic Tree
  // 값 없이 비어 있다. 대괄호의 의미는 값을 무한정 넣을 수 있다. (Memory : Heap영역(변수명), Data영역)

  //print(threeKingdoms);

  // List에 Data 추가하기
  threeKingdoms.add("위");
  threeKingdoms.add("촉");
  threeKingdoms.add("오");

  print(threeKingdoms);
  // [위, 촉, 오]


  // 원하는 index번지의 데이터만 출력하기
  print(threeKingdoms[0]);
  print(threeKingdoms[1]);
  print(threeKingdoms[2]);


  // List의 수정
  threeKingdoms[0] = "We";
  print(threeKingdoms);


  // List의 삭제
  threeKingdoms.removeAt(1);    // index 번지수 removeAt
  threeKingdoms.remove('We');
  print(threeKingdoms);         // [오]


  // List의 데이터 갯수 파악
  print(threeKingdoms.length);


  // threeKingdoms의 숫자 등록하기
  threeKingdoms.add(1);
  print(threeKingdoms);


  // -----------------------------------------
  // List에 정해진 변수 타입의 데이터만 추가하기
  // -----------------------------------------

  List<String> threeKingdoms2 = [];   // <> : Generic (해당하는 타입만 들어올 수 있다.)
  threeKingdoms2.add("We");
  // threeKingdoms2.add(1); // 숫자 입력 불가

  print(threeKingdoms2);

  // 정해진 길이의 List 생성하기
  var threeKingdoms3 = List<String>.filled(3, "");      // 3개 초과 확장이 불가
  print(threeKingdoms3);
  //threeKingdoms3.add("we");   // Add 불가
  threeKingdoms3[0] = '위';
  //threeKingdoms3.removeAt(0); // remove 불가 왜냐? 3개로 지정을 해놨기 때문에
  print(threeKingdoms3);

  // List 선언시 초기값 할당 후 실행
  List<String> threeKingdoms4 = ['위', '촉', '오'];
  print("threeKingdoms4 : $threeKingdoms4");

}
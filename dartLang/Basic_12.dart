main() {
  // Function
  List<int> list1 = [1,3,5,7,9];
  int sum = 0;

  for(int i in list1) {
    sum += i;
  }

  print('합계 : $sum');

  // Function
  List<int> list2 = [10,30,50,70,90];
  int sum2 = 0;

  for(int i in list2) {
    sum2 += i;
  }

  print('합계 : $sum2');

  // 동일한 기능의 코드인데 중복되어 코딩

  // Function 1
  addList() {
    List<int> list1 = [1,3,5,7,9];
    int sum = 0;

    for(int i in list1) {
      sum += i;
    }

    print('합계 : $sum');
  }

  addList();

  // Function 2
  addList2(List fList) {
    int sum = 0;

    for(int i in fList) {
      sum += i;
    }

    print('합계 : $sum');
  }

  addList2(list1);
  addList2(list2);


  // Exercise
  // addtion(5,3);
  // "5 + 3 = 8"
  // 함수 만들기
  
  addtion(int num2, int num3) {

    // int result = num2 + num3;
    // print("$num2 + $num3 = $result");

    print("$num2 + $num3 = ${num2+num3}");
  }
  addtion(5, 3);


  int addtion2(int x, int y) {      // int 타입으로 넘겨줄꺼야
    return x + y;
  }
  int a = addtion2(5, 3);
  print(a);

}

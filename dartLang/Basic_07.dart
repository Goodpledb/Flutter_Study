main() {
  // Map : Key와 Value로 이루어진 Collection
  // List는 대괄호, Map은 중괄호
  List list1 = [];
  Map fruits = {
    'apple' : '사과',
    'grape' : '포도',
    'waterlemon' : '수박',
  };

  print(fruits);

  // 해당 key의 데이터 불러오기
  print(fruits['apple']);
  print("apple의 값은? " + fruits['apple']);

  // 해당 key의 데이터 수정하기
  fruits['watermelon'] = '시원한 수박';
  print(fruits);

  // 데이터 추가
  fruits['banana'] = '바나나';
  print(fruits);
  
}
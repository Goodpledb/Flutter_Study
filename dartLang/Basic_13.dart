main() {
  // Class
  ThreeKingdoms t1 = ThreeKingdoms();     // Class명과 생성자명은 동일하게 해주어야 함.
  // String       name = "James";            // 이런 구조랑 같음.
  
  // 이건 옛날 방식
  // ThreeKingdoms t1 = new ThreeKingdoms();
  //                                     -- 괄호는 Constructor를 의미

  t1.sayName();
  print(t1.name1);
  print(t1._name2);

  ThreeKingdoms2 t2 = ThreeKingdoms2("유비", "촉");
  t2.SaySomething();

}


class ThreeKingdoms {
  // 클래스는 아래 세가지 구성 밖에 없습니다.
  // Field(Property)
  String name1 = '유비';       // 전역변수
  String _name2 = '현덕';      // private 변수, 변수명 앞에 _ 붙여주면 됨.

  // Constructor

  // Method(Function)
  sayName() {
    print("내 이름은 $name1 입니다.");
  }
}


class ThreeKingdoms2 {
  // Field
  late String name;         // Null Safety
  String? nation;           // Null Safety
  // late와 물음표(?)의 차이

  // Constructor
  ThreeKingdoms2(String name1, String nation1)
    : this.name = name1, this.nation = nation1;

  // Method
  SaySomething() {
    print('제 이름은 ${this.name}이고 조국은 ${this.nation}입니다.');
    // print('제 이름은 $name이고 조국은 $nation입니다.');
  }
}
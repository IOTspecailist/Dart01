//Dart for Flutter
void main() {
  // 이건 constructor 초기화인거 같다 그래도 instance 생성되나보다
  var player1 = Player("asdf", 1500);
  player1.sayHellow();
  var player2 = Player("sdds", 2500);
  player2.sayHellow();
}

// * Class
class Player {
  // class 생성
  final String name;
  int xp;

  // constructor 생성
  // class와 이름이 같아야 한다
  Player(this.name, this.xp);

  void sayHellow() {
    print("HI my name is $name and i have $xp");
  }
}

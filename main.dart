//Dart for Flutter
void main() {
  var player1 = Player(
    name: "asdf",
    xp: 1500,
  );
  player1.sayHellow();
  var player2 = Player(
    name: "sdds",
    xp: 2500,
  );
  player2.sayHellow();
}

// * Class
class Player {
  final String name;
  int xp;
  // 중괄호를 추가해서 named constructor로 바꿨다
  Player({
    required this.name, // required를 추가해서 필수값으로 만들었다
    required this.xp,
  });

  void sayHellow() {
    print("HI my name is $name and i have $xp");
  }
}

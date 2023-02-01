//Dart for Flutter
// 4.8강 inheritance
// 1. 매개변수를 받는 constructor(생성자)가 있는 class
class Human {
  final String name;
  Human(this.name); //constrcutor
  void sayHellow() {
    print("Hi I'm $name");
  }
}

enum TeamColor { red, blue }

// 2. 그 class를 상속받은 class
// Human class의 constructor를 초기화 해야 한다
class Player extends Human {
  final TeamColor teamColor;

  // 3. Player constructor를 통해 상위 class의 constructor를 초기화 하도록 설계
  Player({
    required this.teamColor,
    required String name, // 3_1. 어디선가 Player생성자 선언하면 name이 여기오고
  }) : super(name); // : super를 써서 name값을 상위class constructor 매개변수에 넘김

  // @override 키워드 사용시 super class의 sayHellow()함수명을 사용하는데
  // 지금 여기서 선언한걸로 대체 한다는 말임
  @override
  void sayHellow() {
    super.sayHellow(); //super를 써서 상위 class의 method를 출력
    print("and my teamColor is $teamColor");
  }
}

void main() {
  var player = Player(
    teamColor: TeamColor.blue,
    name: 'lions',
  );
  player.sayHellow();
}

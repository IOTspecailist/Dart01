//Dart for Flutter

void main() {
  // 외부로부터 Json data를 받았다고 가정하기 위해
  // Map<String, dynamic> 자료형의 배열 데이터를 생성
  // 이 데이터를 Player class로 바꿔서 사용할 것이다
  // 실전에서 실지로 이런식으로 데이터를 쓴다고 함
  var FromApiData = [
    {
      "name": "1111",
      "team": "A",
      "xp": 0,
    },
    {
      "name": "2222",
      "team": "B",
      "xp": 0,
    },
  ];

  // FromApiData의 데이터 갯수만큼 돌림
  // forEach()의 매개변수로는 FromApiData의 데이터가 순서대로 들어감
  FromApiData.forEach((dsdsdsd) {
    var player = Player.fromJson(dsdsdsd); //for문이 돌때마다 player 객체 생성됨
    player.sayHello();
  });
}

class Player {
  final String name;
  String team;
  int xp;

  //constructor임
  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'], // : 를 사용해서 초기화
        team = playerJson['team'], // forEach문을 통해 들어온 json데이터가 세팅됨
        xp = playerJson['xp']; // json데이터의 key값과 'xp' 부분이 일치해야됨
  //playerJson['xp'] 이게 무슨 의미일까 그냥playerJson의 key인가

  void sayHello() {
    print("Hi my name is $name and i got a team called $team and i earn $xp");
  }
}

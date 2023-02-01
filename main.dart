//Dart for Flutter
// 4.9강 MixIn
// 1. with라는 키워드를 사용
// 2. 특정 class의 properties들을 사용하는 방법임
// 3. MixIn의 조건은 생성자가 없는 class다
// 4. 상속(extends 키워드 사용)과 비교된다
class Strong {
  void becomeStrong(String inteli) {
    print("i'm Strong and $inteli");
  }
}

class Smart {
  final String inteligent = "intel";
}

//with로 Mixin
class human with Smart, Strong {
  human();
}

void main() {
  // main함수에서 MixIn한 클래스를 선언하고 사용했다
  var human1 = human();
  human1.becomeStrong(human1.inteligent);
}

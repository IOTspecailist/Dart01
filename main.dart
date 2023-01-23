//Dart for Flutter

//* Function
// 1. 매개변수 선언 순서는 (자료형 변수명)
void abc(String aaa) {}
// 2. 특이하게 리턴할 수 있다
// 2_1. 일반적인 리턴
String aaa(String aad) {
  return aad; // 이건 일반적인 리턴
}

//2_2. 간단한 func일 경우 이렇게 =>를 사용해서 리턴가능함
// func 안에 로직 많으면? {}중괄호 필수
String aab(String sd) => sd;

// 3. named parameters
// 함수 선언된걸 호출할 떄 보통은 매개변수를 선언 순서대로 입력해야 한다
// Dart는 named parameters 기능이 있는데, 매개변수에 이름을 붙여서 호출할때 순서에 상관없이
// 사용하기 쉽게 호출 할 수 있다. 중괄호{}로 매개변수를 묶어서 사용한다
// 또한 매개변수에 값이 안들어올 경우를 대비해 디폴트 값을 설정할 수도 있고
// 아니면 무조건 값이 들어오도록 설정할 수도 있다
String hhh({
  required String name,
  required int age,
  String country = "디폴트나라",
}) =>
    name;

// 4. Optional Positional Parameter
// 매개변수에 대괄호[]를 사용해서 옵션을 줄 수 있다
String optional(String name, [int? age = 1]) {
  // age는 값이 안들어와도(nullable)이며 디폴트값은 1이다
  return name;
}

// 6. Typedef
// 자료형이 헷갈릴떄 alias를 만드는 것
// 예를들어 Map자료형을 아래처럼 정의해서 사용할 수 있다
typedef m = Map<String, int>;
Map<String, int> td(Map<String, int> fff) => fff; // 이거를
m ts(m asd) => asd; //이런식으로 바꿀 수 있다
void main() {
  // 3_call. named parameters
  // 매개변수를 중괄호로 묶어서 named parameters를 적용했다.
  // 디폴트값이 있는 country는 호출시 입력 안해도 오류안남
  // required가 붙은 name과 age는 값 입력 필수
  hhh(name: '은가누', age: 32);

  // 4_call Optional Positional Parameter
  optional('name');

  // 5. QQ Operator
  // left ?? right //왼쪽이 null이면 right를 선택, not null이면 왼쪽을 선택
  // left ??= right //왼쪽이 null이면 left의 값을 right로 세팅
  String? name; // null일수도 있는 변수 name 등장
  name ?? 'p'; // name이 null이면 p로 세팅, not null이면 name 그대로 사용
  name ??= 'i'; // name이 null이면 i로 세팅
}

void prevFunc() {
  //* lists
  var list1 = [
    1,
    2, // 마지막에 , 를 추가해서 저장하면 이렇게 보기 편하게 자동줄바꿈 됨
  ];
  var giveMeFive = true;
  List<int> list2 = [
    1,
    2,
    if (giveMeFive) 5, // (collection if) true면 list2에 5를 추가함
  ];
  list1.add(5);
  list2.add(5);
  //print(list1);
  //print(list2);

  //* String Interpolation
  // text에 변수를 추가하는 방법
  var name = 'vington';
  var age = 30;
  var greeting = "hellow everyone, my name is $name and I\'m ${age + 2}";
  //print(greeting);

  //* collection for
  var oldFriends = ['a', 'b'];
  var newFriends = [
    'c',
    'd',
    for (var friend in oldFriends) "OLD $friend",
  ];
  //print(newFriends);

  //* Maps
  // 1. 자료형 정해서 선언 및 초기화
  Map<int, bool> val = {
    1: true,
    2: false,
  };
  // 2. var 사용해서 자동으로 자료형 정해지게 하기
  // 이러면 Map<String, Object>로 만들어짐
  var val2 = {
    'sss': 'ddd',
    'asdf': 1234,
    'dff': true,
  };
  // 3. 이렇게 복잡한것도 가능
  // 이러면 Map<List<int>, bool>로 만들어진거임
  var val3 = {
    [1, 2, 3]: true,
    [23, 4, 5]: false,
  };
  print(val);
  print(val2);
  print(val3);

  //* Sets
  // set으로 선언한 변수의 값은 유니크하다. 이것이 list와의 차이점이다
  // set은 {}중괄호로 묶고, list는 []대괄호로 묶는다
  Set num1 = {1, 1, 1}; // ==> 출력하면 첫번쨰 1만 나옴
  var num2 = {1, 2}; // ==> Set<int>로 자동으로 자료형 정해짐
  var num3 = [1, 2]; // ==> List<int>로 자동으로 자료형 정해짐
  print(num1);
  print(num2);
  print(num3);
}

void main() {
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

void main() {
  String? aaa; //String바로다음에 ? 추가함으로써 null safty 변수 선언함
  aaa = null; //변수에 null이 허용됨
  String bbb;
  bbb = null;
  if (aaa != null) {
    //이런식으로 사용할 수 있지
    aaa.isEmpty;
  }
  String? ccc;
  //위에 if문을 간단하게 하면
  ccc?.isEmpty;
}

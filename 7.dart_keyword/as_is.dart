void main() {
  int a = 1;
  //as dùng để chuyển đổi kiểu
  var x1 = a as num;
  // is,is! dùng để so sánh kiểu, đúng thì trả ra true sai thì fasle
  print("a là kiểu int: ${x1 is num}");
  print("a không là kiểu String: ${x1 is! String}");
}

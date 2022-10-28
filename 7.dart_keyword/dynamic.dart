void main(List<String> args) {
  //nếumuốn một biến để chứa nhiều đối tượng của nhiều kiểu khác nhau thì ta dùng dynamic
  dynamic dynamic1 = "Quân";
  print(dynamic1);
  print(dynamic1 is String);
  dynamic1 = 12;
  print(dynamic1);
  print(dynamic1 is int);
  dynamic1 = true;
  print(dynamic1);
  print(dynamic1 is bool);
}

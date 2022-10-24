void main(List<String> args) {
  //3.dynamic
  // dynamic có thể thay đổi kiểu nếu mình gán giá trị khác
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

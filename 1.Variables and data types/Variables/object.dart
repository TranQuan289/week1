void main() {
  //2.Object
  // Object có thể thay đổi kiểu nếu mình gán giá trị khác
  Object object1 = "Quân";
  print(object1);
  print(object1 is String);
  object1 = 12;
  print(object1);
  print(object1 is int);
  object1 = true;
  print(object1);
  print(object1 is bool);
}

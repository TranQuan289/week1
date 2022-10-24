void main() {
  //kiểu tự suy
  //1.var
  //var k thể thay đổi kiểu nếu mình gán giá trị khác
  var variable1 = "Quân";
  print(variable1);
  print(variable1 is String);
  //variable1 = 12; // không được
  var variable2 = 12;
  print(variable2);
  print(variable2 is int);

  var variable3 = false;
  print(variable3);
  print(variable3 is bool);
}

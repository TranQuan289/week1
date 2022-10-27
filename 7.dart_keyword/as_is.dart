void main() {
  int a = 1;
  //as dùng để chuyển đổi kiểu
  var x1 = a as num;
  // is,is! dùng để so sánh kiểu, đúng thì trả ra true sai thì fasle
  print("a là kiểu int: ${x1 is num}");
  print("a không là kiểu String: ${x1 is! String}");
  Winter winter = Winter();
  (winter as Person).firstName = "subtype";
  print(winter.firstName);
  // is kiểm tra xem winter có phải là subtype của Person không rồi gán giá trị cho nó
  if (winter is Person) {
    winter.firstName = "is";
    print(winter.firstName);
  }
}

class Person {
  String? firstName;
  Person([this.firstName]);
}

class Winter extends Person {
  Winter([super.firstName]);
}

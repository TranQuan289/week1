// extension kiểu như mình có thể viết thêm methods cho class mà k cần phải kế thừa class đó
// extension cũng có thể viết mở rộng thêm methods cho các class trong core
void main() {
  Greeting greeting = Greeting();
  greeting.sayGoodbye();
  greeting.sayHi();
  greeting.sayHello();

  final firstChar = 12.23323.fixdouble();
  print(firstChar);
}

class Greeting {
  void sayHello() {
    print("Hello");
  }
}

// sử dụng extension để thêm methods cho class Greeting mà không cần phải kế thừa nó
extension on Greeting {
  void sayGoodbye() {
    print("bye");
  }

  void sayHi() {
    print("sayHi");
  }
}

// dùng extension để viết thêm methods cho class trong core
// cụ thể ở đây ta sẽ viết ra methods fixdouble từ toStringAsFixed
extension doubleFixed on double {
  String fixdouble() => toStringAsFixed(2);
}

void main(List<String> args) {
  className name = className(3, 1);
  print(name.a);
  className0 name0 = className0();
  print(name0.a);
  className1 name1 = className1(1, 3);
  print(name1.a);
  className2 name2 = className2(2);
  print(name2.a);
  className3 name3 = className3(3, a: 4, b: 5);
  print(name3.a);
  className4 name4 = className4(4);
  print(name4.a);
  className4 name41 = className4(1);
  print(name41.a);
  className4 name42 = className4(1, 2);
  print(name42.a);
}

class className {
  int? a;
  int? b;
  className(this.a, this.b);
  // ClassName constructor được gắn tự động bắn buộc nhập cả 2 gía trị
}

class className0 {
  int? a;
  int? b;
  // default constructor k có đối số
}

class className1 {
  int? a;
  int? b;
  // ClassName constructor tự gắn biến, bắt buộc nhập cả 2 giá trị
  className1(int x, int y) {
    this.a = x;
    this.b = y;
  }
}

class className2 {
  final a;
  final b;
  const className2([this.a, this.b]);
  // const constructor có truyền 1 hoặc 2 cái cũng dc
}

class className3 {
  int? a;
  int? b;
  int? c;
  className3(this.c, {required int a, required int b});
  // constructor bắt buộc nhập cả tên a và b rồi nhập thêm giá trị
}

class className4 {
  int? a;
  int? b;
  int? c;
  className4(this.a, [this.b, this.c]);
  //constructor bắt buộc truyền a còn lại b, c có thể truyền hoặc không truyền
}

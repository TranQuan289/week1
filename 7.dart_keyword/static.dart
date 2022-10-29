/// static có 2 loại
/// Static variables : không được khởi tạo cho đến khi nó được dùng và chỉ dc khởi tạo 1 lần, được gọi bằng Class chứ k thể gọi bằng instance
/// 1 instance variable thì có thể được khởi tạo nhiều lần
/// Static methods : Không truy cập được bằng instance của class, cũng như this, nhưng có thể truy cập vào static variables, được gọi bằng Class
class Student {
  int mark = 10; // instance variable
  static int score = 10; // static variable
  void inMark() {
    // instance method
    mark++;
  }

  void inScore() {
    //instance method
    score++;
  }

  static String Intern() {
    //static method
    return "Winter";
  }
}

void main(List<String> args) {
  var student = Student();
  print(student.mark); //10
  //print(student.score); // không thể sử dụng getter thông quan 1 instance mà phải sử dụng class để truy cập getter
  print(Student.score); //10

  student.inMark(); // 11
  student.inScore(); // 11

  print(student.mark); //11
  print(Student.score); //11

  var student2 = Student();
  student2.inMark(); // 11
  student2.inScore(); // 12

  print(student2.mark); //11
  print(Student.score); //12

  print(Student.Intern()); // dùng class để gọi static methods
  //print(student.Intern()); // không thể sử dụng instance để gọi static methods
}

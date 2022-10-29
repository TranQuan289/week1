void main(List<String> args) {
  // cách  viết func thông thường
  print(calculator(3, 4));
// func chỉ có 1 biểu thức trả về thì có thể xài =>
  print(sum(2, 4));
//func required cần nhập theo tên, k cần biết vị trị để truyền tham số đó
  print(sum1(b: 2, a: 1));
// func optional thì ra có thể cho trước giá trị, rồi từ đó ta có thể truyền tham số hoặc lấy giá trị cho trước
  print(sum2(3, 5));
  print(sum2(3));
//func bắt buộc nhập tên của 2 giá trị b,c(không yêu cầu vị trí)
  print(sum3(c: 4, b: 4, 4));
}

// cách  viết func thông thường
int calculator(int a, int b) {
  return a + b;
}

// func chỉ có 1 biểu thức trả về thì có thể xài =>
int sum(int a, int b) => a + b;
//func required cần nhập theo tên, k cần biết vị trị để truyền tham số đó
int sum1({required int a, required int b}) => a + b;
// func optional thì ra có thể cho trước giá trị, rồi từ đó ta có thể truyền tham số hoặc lấy giá trị cho trước
int sum2(int a, [int b = 4]) => a + b;
//func bắt buộc nhập tên của 2 giá trị b,c(không yêu cầu vị trí)
int sum3(int a, {required int b, required int c}) => a + b + c;
//Anonymous functions thì không có tên, ra lệnh làm cái gì đó mà không cần tạo toàn bộ chức năng
VoidCallback() {
  //do something
}

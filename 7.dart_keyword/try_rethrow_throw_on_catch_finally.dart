// Throw, Catch : ném, bắt ra ngoại lệ (Exception) không mong muốn xảy ra lúc runtime
//Try Catch ngoại lệ để làm nó k ảnh hưởng đến thứ khác ( như crash app chẳng hạn)
//rethrow cho phép ném lại Exception đó
//finally luôn được gọi kể cả có hoặc k có exception
void main(List<String> args) {
  // còn khi xài try catch thì dù bị lỗi nó cũng chạy tiếp và sẽ in ra lỗi tương ứng
  try {
    double cv = double.parse("d");
  } catch (e) {
    print(e);
    rethrow; // ném lại exception(kiểu như +1 print(e))
  } finally {
    print("finally"); // luôn luôn được gọi
  }
  //double cv = double.parse("d"); // nếu k xài try catch thì nó sẽ lỗi ở đây và dừng việc chạy
  print("vẫn chạy xuống đây");

  try {
    double cv = double.parse("d");
  } on FormatException {
    // dùng on để có thể chỉ rõ lỗi muốn bắt rồi thực hiện các câu lệnh rồi chạy tiếp, nếu lỗi khác lỗi ta chỉ ra thì nó sẽ không xử lý (Unhandled) và dừng luôn việc chạy
    print("object");
  }
// có thể kết hợp catch nhiều ngoại lệ bằng on, nếu cái trên không phải ngoại lệ đó thì chạy xuống xem xét tiếp
  try {
    double cv = double.parse("d");
  } on ArgumentError catch (e) {
    print(e);
    print("object");
  } on FormatException {
    print("object1");
  }
  //chúng ta có thể throw 1 exception hoặc 1 đối tượng bất kì nào cũng dc
  throw "hi"; // quăng ra lỗi với dòng chữ "hi"
}

// các function có thể ném bất cứ thứ gì ngay cả khi nó k phải là 1 ngoại lệ (Exception)
void throww() {
  throw 1;
}

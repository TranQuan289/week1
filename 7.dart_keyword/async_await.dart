//async và await dùng để xử lý trong việc xử lý bất đồng bộ
// kiểu như bình thường mình sẽ phải chờ dữ liệu tải xong mới làm việc khác (như call API phải cần thời gian load các thứ), bây giờ với async await thì mình sẽ làm bước tiếp theo, khi nào tải xong dữ liệu thì nó sẽ trả về 1 future hoặc stream rồi mình lấy dữ liệu đó để xử lý
// có kiểu Futute mới có async, có async mới có await
//thời dùng try catch để xử lý await, trách bị crash app
import 'dart:io';

void main(List<String> args) {
  print("__Đây là lập trình đồng bộ__");
  Synchronous(); //lập trình đồng bộ sẽ kiểu như chạy từ trên xuống dưới, chờ chạy xong rồi chạy tiếp
  print("__Đây là lập trình bất đồng bộ__");
  Asynchronous(); //Lập trình bất đồng bộ thì chạy luôn không có chờ rồi tí task đó xong thì quay lại
}

void Synchronous() {
  print("S_task1");
  print("S_task2");
  Sync(); // chờ cái này chạy xong mới chạy cái tiếp theo
  print("S_task4");
}

void Asynchronous() {
  print("A_task1");
  print("A_task2");
  Async(); // chạy tiếp cái tiếp theo, nào xong thì quay lại
  print("A_task4");
}

void Sync() {
  sleep(Duration(seconds: 4));
  print("S_task3");
}

Future<void> Async() async {
  try {
    await Future.delayed(Duration(seconds: 4));
    print("A_task3");
  } catch (e) {
    print(e);
  }
}

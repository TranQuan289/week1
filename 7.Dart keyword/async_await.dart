//async và await dùng để xử lý trong việc xử lý bất đồng bộ
// kiểu như bình thường mình sẽ phải chờ dữ liệu tải xong mới làm việc khác (như call API phải cần thời gian load các thứ), bây giờ với async await thì mình sẽ làm bước tiếp theo, khi nào tải xong dữ liệu thì nó sẽ trả về 1 future hoặc stream rồi mình lấy dữ liệu đó để xử lý
// có kiểu Futute mới có async, có async mới có await
//thời dùng try catch để xử lý await, trách bị crash app
import 'dart:io';

void main(List<String> args) {
  noAsyncAwait();
}

void noAsyncAwait() {
  print(1);
  print(2);
  sleep(Duration(seconds: 3));
  // sẽ đợi 3s mới làm tiếp cái tiếp theo
  print(3);
}

void AsyncAwait() {
  print(1);
  print(2);
  // sẽ làm hết luôn rồi quay lại cái await khi nó thực hiện xong kk
  print(3);
}

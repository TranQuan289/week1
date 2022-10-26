// biến có late sẽ được khởi tạo giá trị trước khi build giao diện trong setState, kiểu như sẽ được khởi tạo nếu được truy cập
// biến có late sẽ được gán giá trị trong lúc runtime
// late dùng trong các trường hợp như : biến đó có thể không cần thiết
// một biến ? không cần được khởi tạo trước khi nó được sử dụng, nó được khởi tạo dưới dạng null
late String Name;
// nếu  ta truy cập 1 biến có late trước khi khởi tạo thì sẽ throw ra lỗi runtime
String? Age;
// còn với ? thì không hiện lỗi mà là sẽ nhận null
void main(List<String> args) {
  print(Name); //Field 'Name' has not been initialized.
  print(Age); // null
}

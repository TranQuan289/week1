// get vs set là 1 phương thức đặc biệt cung cấp quyền đọc và ghi vào các thuộc tính của 1 đối tượng
// get : đọc dữ liệu ra, set : ghi dữ liệu vào
//mỗi biến có một getter mặc định và một setter (nếu được)
//có thể tạo thêm các thuộc tính getters và setters cho đối tượng bằng cách sử dụng từ khóa get và set
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Xác định 2 thuộc tính được tính toán: right và bottom.
  double get right => left + width; // get right bằng
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.right); // gọi phương thức get mình đã tạo
  print(rect.bottom); // gọi phương thức get mình đã tạo
  rect.right = 20; // gọi phương thức set mình đã tạo
  print(rect.left);
  rect.bottom = 20; // gọi phương thức set mình đã tạo
  print(rect.top);
}

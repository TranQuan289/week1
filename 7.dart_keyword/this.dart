// từ khoá this dùng để trỏ đến 1 đối tượng của lớp hiện tại
class Demo {
  String? a, b;
  //Demo(this.a, this.b);// this ở đây trỏ đến a và b
  Demo(a, b) {
    this.a = a; // this.a ở đây trỏ đến a của class
    this.b = b; //this.b ở đây trỏ đến b của class
  }
}

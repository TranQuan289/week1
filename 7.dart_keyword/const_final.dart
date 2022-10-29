void main() {
  //4.const
  // phải gắn giá trị và không thể thay đổi giá trị đó
  //const constTime;
  //constTime = DateTime.now();
  //5.final
  // k cần gắn giá trị và có thể thay đổi giá trị của nó trong lúc compile rồi từ đó k thay đổi dc nữa
  final finalTime;
  finalTime = DateTime.now();
  print(finalTime);
  // const thường chỉ những thứ k thể thay đổi được
  // final thì có thể thay đổi dc 1 lần trong runtime nếu chưa có giá trị rồi k thay đổi được nũa, còn nếu được gắn giá trị từ ban đầu thì nó cũng sẽ k thay đổi được giống const
}

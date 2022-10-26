void main(List<String> args) {
  //List (array)
  // list kèm theo kiểu thì chỉ nhận những giá trị kiểu đó
  // nếu ta không gắn kiểu cho list thì nó sẽ tự suy kiểu phụ thuộc vào giá trị được gán
  //List dùng []
  List<int> listNum = [1, 2, 3, 4, 5, 6, 6, 7, 2];
  List listString = ['a', 'b', 'c'];
  var listNumString = [1, 2, 3, 4, 5, 6, 6, 7, 2, 'a', 'b', 'c'];
  listNum.remove(2);
  print(listNum);
  print(listString);
  listNumString.add(4);
  print(listNumString);
  print(listNumString.length);
}

//for gồm có for, for in, forEach
void main(List<String> args) {
  for (int i = 0; i < 5; i++) {
    print(i);
  }
  var list = [1, 2, 3, 4, 4, 5];
  for (var element in list) {
    // thường dùng cho Iterable
    print(element);
  }
  list.forEach((element) {
    // thường dùng cho Iterable
    print(element);
  });
}

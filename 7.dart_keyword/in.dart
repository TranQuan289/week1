// in thường được xài trong for in
//Iterable : List, Set, Queue, keys và values của Map
void main(List<String> args) {
  var list = [1, 2, 3, 4, 4, 5];
  for (var element in list) {
    // thường dùng cho Iterable
    print(element);
  }
}

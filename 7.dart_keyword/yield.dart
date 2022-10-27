// yield tương tự như return nhưng không chấm dứt chức năng
// yield thường được sử dụng trong Stream và Iterable
// không thể xài retun trong async* và sync*
Stream<int> runToMax(int n) async* {
  int i = 0;
  while (i < n) {
    yield i;
    i++;
    await Future.delayed(Duration(seconds: 1));
  }
}
// yield sẽ trả về 1 Stream

Iterable<int> genIterates(int max) sync* {
  var i = 0;
  while (i < max) {
    yield i;
    i++;
  }
}
// yield sẽ trả về 1 Iterable

void main(List<String> args) {
  // genIterates(5).forEach((element) {
  //   print(element);
  // });
  runToMax(4).forEach((element) {
    print(element);
  });
}

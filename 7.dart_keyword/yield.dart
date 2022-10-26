// yield tương tự như return nhưng không chấm dứt chức năng
// yield thường được sử dụng trong Stream và Iterable
Stream<int> runToMax(int n) async* {
  int i = 0;
  while (i < n) {
    yield i;
    i++;
    await Future.delayed(Duration(seconds: 300));
  }
}
// Stream<int> countDownFrom(int n) async* {
//   if (n > 0) {
//     yield n;
//     yield* countDownFrom(n - 1);
//   }
// }
// Iterable<int> genIterates(int max) sync* {
//   var i = 0;
//   while (i < max) {
//     yield i;
//     i++;
//   }
// }
// Iterable<int> countDownFrom(int n) sync* {
//   if (n > 0) {
//     yield n;
//     yield* countDownFrom(n - 1);
//   }
// }
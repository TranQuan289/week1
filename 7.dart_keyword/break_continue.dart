// break dùng để ngắt vòng lặp hoặc ngắt switch
// sử dụng continue để bỏ qua vòng lặp rồi tới vòng lặp tiếp theo
void main(List<String> args) {
  int i = 0;
  while (i < 10) {
    i++;
    if (i % 2 == 0) continue; // 1,3,5
    if (i == 7) break;
    print(i);
  }
  var list = [1, 2, 3, 4, 5];
  for (i in list) {
    if (i == 4) break;
    print(i);
  }
  int a = 1;
  switch (a) {
    case 1:
      print("1");
      break;
    case 2:
      print("2");
      break;
    case 3:
      print("3");
      break;
    default:
  }
}

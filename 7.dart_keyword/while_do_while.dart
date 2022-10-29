// vòng lặp while, điều kiện trong while đúng thì thực hiện tiếp, sai thì dừng lại
void main(List<String> args) {
  var i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
  var d = 0;
  do {
    print("do while này $d");
    d++;
  } while (d < 5);
}

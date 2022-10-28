//do thường được xài trong while để làm trước rồi xét điều kiện
// điều kiện đúng thì quay lại, điều kiện sai thì thôi
void main(List<String> args) {
  int i = 0;
  do {
    print("doSomeThing ${i}");
    i++;
  } while (i < 5);
}

void main() {
  //6.late
  lateText = 'hi';
  print(lateText);
}

late String lateText; // có thể gán giá trị khi runtime nên k bị lỗi
//String notLateText; // bị lỗi vì giá trị null

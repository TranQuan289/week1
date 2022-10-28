// ta truyền giá trị vào trong switch, giá trị nào trùng với giá trị trong switch thì thực hiện rồi ngắt, nếu k có giá trị nào trùng thì thực hiện các câu lệnh dưới default
// nếu case thiếu break sẽ xảy ra lỗi nhưng nếu case đó trống thì không sao
// cũng có thể xài return trong case nếu muốn trả về 1 giá trị rồi dừng
void main(List<String> args) {
  String expression = "value";
  switch (expression) {
    case "value":
      return print("toDoSomeThing");
    case "value1":
    case "value2":
      print("toDoSomeThing2");
      break;
    case "value3":
      print("toDoSomeThing3");
      break;
    default:
      print("default");
  }
}

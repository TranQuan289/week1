void main(List<String> args) {
  // default value: các biến k được gắn giá trị có giá trị mặc định là null
  String? a;
  print(a);
  // {} nếu ta k chỉ rõ hoặc gán giá trị thì mặc định là Map chứ k phải Set
  var b = {}; //Type: Map<dynamic, dynamic>
  var c = {1, 2, 3}; //Type: Set<int>
  // trong swich case thì nếu k tìm thấy giá trị nào của case giống với swich thì trả về default
  var expression = "";
  switch (expression) {
    case "value":
      break;
    default:
      print("default");
  }
  //default constructor : nếu bạn k khai báo 1 hàm tạo thì nó sẽ tự sinh ra 1 hàm tạo k có đối số
}

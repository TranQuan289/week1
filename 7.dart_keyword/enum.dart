// mỗi value trong enum đều có mỗi index riêng biệt
//enum dùng để liệt kê các giá trị hàng số
//enum dùng để đại diện cho các hàng số
//enum cũ
enum Members { Winter, Fox }

//enum 2.17 có thể khai báo thêm biến và tạo constructor
enum Actor {
  Admin("Winter", 21),
  User("Fox", 22);

  final String Name;
  final int Age;
  const Actor(this.Name, this.Age);
}

void main(List<String> args) {
  // mỗi value trong enum đều có mỗi index riêng biệt
  print(Members.Winter.index);
  // dùng values để get tất cả các value vào list
  List<Members> members = Members.values;
  print(members.length);
  // enum là một kiểu liệt kê
  Members newbie = Members.Winter;
  //var newbie = Members.values[1];
  switch (newbie) {
    case Members.Winter:
      print("Intern ĐN");
      break;
    case Members.Fox:
      print("Intern HCM");
      break;
    default:
  }
  //khi cần lấy cái gì ở trong enum thì ta có thể gọi ra bằng các cách này
  print(Actor.values[1].Name);
  print("${Actor.Admin.Name} ${Actor.Admin.Age}");
}

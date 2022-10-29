//factory được sử dụng trong constructors được gọi là factory constructors
//Factory constructors
// sẽ tạo ra 1 cái factory constructors với 1 tên khác, mình có thể cho thêm tham số vào và return 1 class extends chính class factory constructors đó
class constructorFactoryUser {
  String? name, level;
  constructorFactoryUser({this.name, this.level});
  factory constructorFactoryUser.user(String user) {
    if (user == "Admin") {
      return Admin(name: "Winter", level: "Intern_Flutter");
    } else {
      return User(name: "Fox", level: "Intern");
    }
  }
}

class Admin extends constructorFactoryUser {
  String? name, level;
  Admin({this.name, this.level});
}

class User extends constructorFactoryUser {
  String? name, level;
  User({this.name, this.level});
}

void main(List<String> args) {
  //khi mình xài constructorFactoryUser.user("Admin") thì thì nó sẽ trả về class Admin từ đó mình có thể lấy dữ liệu ở trong class Admin đó
  constructorFactoryUser cfactory = constructorFactoryUser.user("Admin");
  print(cfactory.level);
}

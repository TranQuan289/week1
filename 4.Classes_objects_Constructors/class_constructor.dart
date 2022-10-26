void main(List<String> args) {
  // cần truyền 2 đối số
  constructorAuto auto = constructorAuto(3, 1);
  print(auto.runtimeType);
  //không cần truyền đối sô
  constructorDefault cdefault = constructorDefault();
  print(cdefault.runtimeType);
  //cần truyền 2 tham số
  constructorNormal normal = constructorNormal(1, 3);
  print(normal.runtimeType);
  // có thể truyền 1 tham số
  constructorOptional optional1 = constructorOptional(1);
  print(optional1.runtimeType);
  //có thể truyền 2 tham số
  constructorOptional optional2 = constructorOptional(1, 2);
  print(optional2.runtimeType);
  // hoặc không cần truyền tham số nào
  constructorOptional optional0 = constructorOptional(1, 2);
  print(optional0.runtimeType);
  // bắt buộc nhập tên tham số của 2 đối số và giá trị 2 đối số nhưng không yêu cầu vị trí nhập trước sau
  constructorRequired req = constructorRequired(b: 5, a: 4);
  print(req.runtimeType);
  // bắt buộc nhập 4 đối số, phần required cần kèm theo tên tham số
  constructorRequiredvsNormal reqVsNor =
      constructorRequiredvsNormal(4, 5, b: 5, a: 4);
  print(reqVsNor.runtimeType);
  // bắt buộc nhập 4 đối số, phần required cần kèm theo tên tham số, k yêu cầu vị của phần required nhưng phần còn lại thì cần phải có vị trí trước sau
  constructorRequiredvsNormal reqVsNor1 =
      constructorRequiredvsNormal(b: 5, a: 4, 4, 5);
  print(reqVsNor1.runtimeType);
  // chỉ cần nhận 1 đối số required còn lại k cần nhập 2 đối số kia cũng dc
  constructorRequiredvsOptional requiredvsOptional =
      constructorRequiredvsOptional(4);
  print(requiredvsOptional.runtimeType);
  // có thể vừa nhập required rồi nhập thêm 1 đối số
  constructorRequiredvsOptional requiredvsOptional1 =
      constructorRequiredvsOptional(1, 4);
  print(requiredvsOptional1.runtimeType);
  // có thể vừa nhập required rồi nhập thêm 2 đối số
  constructorRequiredvsOptional requiredvsOptional2 =
      constructorRequiredvsOptional(1, 2, 4);
  print(requiredvsOptional2.runtimeType);
  //khi không xài Redirecting thì nó như là constructor bình thường
  constructorsRedirecting redirecting = constructorsRedirecting(1, 3, 4);
  print(redirecting.runtimeType);
  //Khi xài constructorsRedirecting.withoutC thì ta chỉ nhập 2 giá trị a,b còn lại giá trị c đã được set trước không thay đổi dc
  constructorsRedirecting redirectingC = constructorsRedirecting.withoutC(1, 3);
  print(redirectingC.runtimeType);
  //Khi xài constructorsRedirecting.withoutBC thì ta chỉ nhập giá trị a còn lại giá trị b,c đã được set trước không thay đổi dc
  constructorsRedirecting redirectingBC = constructorsRedirecting.withoutBC(1);
  print(redirectingBC.runtimeType);
  //khi mình xài constructorFactoryUser.user("Admin") thì thì nó sẽ trả về class Admin từ đó mình có thể lấy dữ liệu ở trong class Admin đó
  constructorFactoryUser cfactory = constructorFactoryUser.user("Admin");
  print(cfactory.level);
}

class constructorAuto {
  int? a, b;
  constructorAuto(this.a, this.b);
  // constructor được gắn tự động bắn buộc nhập cả 2 đối số
}

class constructorDefault {
  int? a, b;
  // default constructor k có đối số
}

class constructorNormal {
  int? a, b;
  //constructor tự gắn biến, bắt buộc nhập cả 2 đối số
  constructorNormal(int x, int y) {
    this.a = x;
    this.b = y;
  }
}

class constructorOptional {
  int? a, b;
  constructorOptional([this.a, this.b]);
  // constructor có truyền 1 hoặc 2 đối số (hoặc có thể không cần truyền)
}

class constructorRequired {
  int? a, b;
  constructorRequired({required int a, required int b});
  // constructor bắt buộc nhập cả tên a và b rồi nhập thêm đối số(giúp ta khi đọc dễ dàng biết được truyền đối số đó cho tham số nào), không yêu cầu vị trị nhập vào trước hay sau
}

class constructorRequiredvsNormal {
  int? a, b, c, d;
  constructorRequiredvsNormal(this.c, this.d, {required int a, required int b});
  // constructor bắt buộc nhập cả 4 đối số, phần required cần kèm thêm tên nhưng k yêu cầu vị trí, còn lại c, d yêu cầu vị trí
}

class constructorRequiredvsOptional {
  int? a, b, c;
  constructorRequiredvsOptional(this.a, [this.b = 0, this.c]);
  //constructor bắt buộc truyền a còn lại b, c có thể truyền hoặc không truyền
}

//Redirecting constructors
//ta có thể tạo thêm các constructors cùng tên với số lượng đối số khác nhau, và bắt buộc nhập đủ các đối số ấy
class constructorsRedirecting {
  int? a, b, c;
  constructorsRedirecting(this.a, this.b, this.c);
  constructorsRedirecting.withoutC(this.a, this.b) : c = 1;
  constructorsRedirecting.withoutBC(this.a)
      : b = 1,
        c = 1;
}

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

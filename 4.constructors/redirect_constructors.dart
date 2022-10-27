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

class Intern {
  String? name;
  int? age;
  Intern(this.name, this.age);
}

class Winter extends Intern {
  String? alias;
  Winter(super.name, super.age, this.alias);
  // có thể dùng thêm từ khoá super để có thể redirect tới class mẹ
  Winter.alias(this.alias) : super("Quan", 19);
}

void main(List<String> args) {
  //khi không xài Redirecting thì nó như là constructor bình thường
  constructorsRedirecting redirecting = constructorsRedirecting(1, 3, 4);
  print(redirecting.runtimeType);

  //Khi xài constructorsRedirecting.withoutC thì ta chỉ nhập 2 giá trị a,b còn lại giá trị c đã được set trước không thay đổi dc
  constructorsRedirecting redirectingC = constructorsRedirecting.withoutC(1, 3);
  print(redirectingC.runtimeType);

  //Khi xài constructorsRedirecting.withoutBC thì ta chỉ nhập giá trị a còn lại giá trị b,c đã được set trước không thay đổi dc
  constructorsRedirecting redirectingBC = constructorsRedirecting.withoutBC(1);
  print(redirectingBC.runtimeType);

  //khi khởi tạo ta dùng redirect thì chỉ cần nhập 1 đối số
  Winter winter = Winter.alias("Winter");
  print(winter.alias);
}

//Abstract methods
// abstract dùng để tạo ra methods, các biến,... sau đó những class nào extends Abstract class đó thì sẽ nhận dc các method,các biến,... trên, mình có thể override lại
abstract class Work {
  void doHomeWork();
  late List<int> number;
  late String winter;
}

abstract class Worked {
  void doHomeWorked();
}

// class có thể kế thường 1 abstract từ đó có thể @override lại các methods có trong abstract
class Winter extends Work {
  @override
  void doHomeWork() {
    print("doHomeWork");
  }

  void doSomeThing() {
    print("doSomeThing");
  }
}

// dùng implements để có thể kế thừa được nhiều class(gọi là interface) kkác và có thể thay đổi nội dung của các method đó
class Fox implements Worked, Winter {
  @override
  void doHomeWorked() {
    // method này kế thừa từ abstract class Worked
    print("doHomeWork");
  }

  @override
  void doSomeThing() {
    // method này kế thừa từ class Winter
    print("doSomeThing");
  }

  @override
  void doHomeWork() {
    // method này kế thừa từ  class Winter
    print("doHomeWorkChange");
  }

  @override
  List<int> number = [1, 2, 3, 4];

  @override
  String winter = "no";
}

class Intern implements Winter, Fox {
  @override
  List<int> number = [1, 2];

  @override
  void doHomeWork() {
    print("something");
  }

  @override
  void doHomeWorked() {
    print("something");
  }

  @override
  void doSomeThing() {
    print("something");
  }

  @override
  String winter = "yes";
}

class Mix extends Fox implements Work {}

void main(List<String> args) {
  Winter winter = Winter();
  Fox fox = Fox();
  winter.doHomeWork();
  fox.doHomeWork();
  Intern intern = Intern();
  print(intern.number);
}

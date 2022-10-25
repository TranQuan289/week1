//Abstract methods
// abstract sẽ tạo ra các methods sau đó những class nào extends Abstract class đó thì sẽ nhận dc các method trên, mình có thể thay đổi nội dung ở trong methods đó
abstract class Work {
  void doHomeWork();
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
    print("doHomeWork");
  }

  @override
  void doSomeThing() {
    print("doSomeThing");
  }

  @override
  void doHomeWork() {
    print("doHomeWorkChange");
  }
}

void main(List<String> args) {
  Winter winter = Winter();
  Fox fox = Fox();
  winter.doHomeWork();
  fox.doHomeWork();
}

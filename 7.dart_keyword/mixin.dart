// mixin là một lớp không có hàm tạo
// là 1 lớp mà hành vi của nó có thể chia sẽ cho các lớp khác
// để kế thừa các thuộc tính trong mixin thì ta xài with hoặc implements chứ k thể xài extends
// nếu muốn mix với một mixin khác hoặc 1 class khác thì ta xài on

class A {
  void printA() => print("A");
}

mixin B {
  void printB() => print("B");
}
// xài on thì class nào mà là con của class D mới có thể with với C
mixin C on D {
  void printC() => print("C");
}

// với mixin thì ta sẽ xài with, nếu xài implement thì ta phải override lại
class ABC extends A with B {}

class D {}

class conD extends D with C {
} // được phép with với C vì conD là class con của class D
//class noConD extends A with C{} // không được phép with với C vì noConD là con của A chứ không phải là con của D

void main(List<String> args) {
  ABC abc = ABC();
  abc.printA();
  abc.printB();
  conD d = conD();
  d.printC();
}

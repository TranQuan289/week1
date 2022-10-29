//mouse là lớp con của Animal
//convariant : đồng biến
class Animal {
  void chase(Animal x) {}
}

class Mouse extends Animal {}

class Cat extends Animal {
  @override
  void chase(
      covariant Animal
          x) {} //sử convariant để biến Mouse thành bản ghi đè hợp lệ
}

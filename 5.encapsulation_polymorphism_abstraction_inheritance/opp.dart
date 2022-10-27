class Car {
  String? nameCar;
  int? speedCar;
  Car([this.nameCar, this.speedCar]);
  void drive(String nameCar, int speedCar) {
    print("xe $nameCar đang lái với tốc độ $speedCar km/h");
  }
}

class Oto extends Car {
  // tính kế thừa
  String? type;
  Oto([super.nameCar, super.speedCar, this.type]);
  @override
  void drive(String nameCar, int speedCar) {
    print("override");
    super.drive(nameCar, speedCar);
  }

  //overloading
  void dirve(String nameCar, int speedCar, String type) {
    // tính đa hình
    print("xe $nameCar đang lái với tốc độ $speedCar km/h thuộc loại $type");
  }
}

void main(List<String> args) {
  Oto oto = Oto();
  oto.dirve("Kia", 100, "4 chỗ"); // method của Oto
  oto.drive("Kia", 200); // method của class Car
}

class Car {
  String? nameCar;
  int? speedCar;
  void drive(String nameCar, int speedCar) {
    print("xe $nameCar đang lái với tốc độ $speedCar km/h");
  }
}

class Oto extends Car {
  // tính kế thừa
  String? type;
  void dirve(String nameCar, int speedCar, String type) {
    // tính đa hình
    print("xe $nameCar đang lái với tốc độ $speedCar km/h thuộc loại $type");
  }
}

void main(List<String> args) {
  Oto oto = Oto();
  oto.dirve("Kia", 100, "4 chỗ");
  oto.drive("Kia", 200);
}

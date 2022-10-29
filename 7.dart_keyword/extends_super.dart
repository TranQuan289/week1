// extends dùng để kế thừa
// super dùng để kế thừa lại các constructor, các method của superclass
class BaseType {
  String? a, b;
  BaseType(this.a, this.b);
  void supertype() {
    print("object");
  }
}

// dùng extends để tạo ra 1 subclass(lớp con)
class DerivedType extends BaseType {
  // class DerivedType(subclass) kế thừa class BaseType(superclass) thì subclass sẽ nhận được những thứ của superclass bằng từ khoá super
  DerivedType([super.a, super.b]);
  void supertype() {
    // dùng super để kế thừa lại method của superclass và có thể viết thêm
    super.supertype();
    print("object subclass");
  }
}

class BaseClass<T extends BaseType> {
  final T prop; // T sẽ có kiểu BaseType
  BaseClass(this.prop) {
    // this.prop ở đây sẽ là BaseType hoặc là DerivedType vì T extends BaseType mà DerivedType là subclass của BaseType
    print("object");
    print(prop);
  }
}

void main(List<String> args) {
  var b = BaseClass(BaseType("2", "4"));
  print(b.prop.b);
  var c = BaseClass(DerivedType("2", "5"));
  print(c.prop.b);
}

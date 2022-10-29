//khi một class implement một class khác, thì mặc định class đó sẽ là một interface, và chúng ta chỉ định nghĩa các được function của class đó ở subclass, mà không thể kế thừa từ nó.
class Person {
  // Trong interface, nhưng chỉ hiện thị trong thư viện này.
  final _name;

  // Không ở trong interface, vì đây là 1 constructor.
  Person(this._name);

  // Trong interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// Một implement của Person interface
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}

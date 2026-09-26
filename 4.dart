class Animal {
  int? id;
  String Name;
  String? color;

  Animal(this.id, this.Name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(super.id, super.name, super.color, this.sound);

  void display() {
    print("ID: $id");
    print("Name: $Name");
    print("color: $color");
    print("$sound");
  }
}

void main() {
  Cat cat = Cat(1, "Gris", "Gray", "MEOW! MEOW!");
  cat.display();
}

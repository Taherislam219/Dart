class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void display() {
    print("ID: $id");
    print("Name: $name");
    print("RAM: ${ram}GB");
    print("----------------");
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "Dell Inspiron", 8);
  Laptop laptop2 = Laptop(2, "HP Pavilion", 16);
  Laptop laptop3 = Laptop(3, "Lenovo ThinkPad", 32);

  laptop1.display();
  laptop2.display();
  laptop3.display();
}

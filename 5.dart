class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  int? get id => _id;
  String? get brand => _brand;
  String? get color => _color;
  double? get price => _price;
  /*
  set id(int id) => this._id = id;
  set brand(String brand) => this._brand = brand;
  set color(String color) => this._color = color;
  set price(double price) => this._price = price;*/

  void Setter(int id, String brand, String color, double price) {
    this._id = id;
    this._brand = brand;
    this._color = color;
    this._price = price;
  }

  void display() {
    print("ID: $_id");
    print("Brand: $_brand");
    print("Color: $_color");
    print("Price: $_price");
    print("----------------");
  }
}

void main() {
  Camera c1 = Camera();

  c1.Setter(01, "Gris", "Gray", 15000);

  c1.display();
}

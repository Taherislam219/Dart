class house {
  int id;
  String name;
  double price;

  house(this.id, this.name, this.price);
}

void main() {
  house h1 = house(1, "Shopnopori", 20000);
  house h2 = house(2, "hour", 25000);
  house h3 = house(3, "bonolota", 18000);

  List<dynamic> houses = [h1, h2, h3];
  for (var house in houses) {
    print("ID: ${house.id}");
    print("Name: ${house.name}");
    print("Price: ${house.price}");
    print("-----------------");
  }
}

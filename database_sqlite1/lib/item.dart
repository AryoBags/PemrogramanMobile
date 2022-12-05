class Item {
  int _id;
  String _name;
  int _price;
  // int _stock;
  // String _code;

  int get id => _id;
  String get name => this._name;
  int get price => this._price;

  set name(String value) => this._name = value;
  set price(value) => this._price = value;

// konstruktor versi 1
  Item(this._name, this._price);
// konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }
}

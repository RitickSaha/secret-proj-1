class Inventory_Products {
  int _products_Code;
  String _product_Name;
  double _product_Price;
  double _product_Cost;

  int get products_Code => _products_Code;

  String get product_Name => _product_Name;

  double get product_Price => _product_Price;

  double get product_Cost => _product_Cost;

  Inventory_Products(this._products_Code, this._product_Name,
      this._product_Price, this._product_Cost);

  set product_Cost(double value) {
    _product_Cost = value;
  }

  set product_Price(double value) {
    _product_Price = value;
  }

  set product_Name(String value) {
    _product_Name = value;
  }

  set products_Code(int value) {
    _products_Code = value;
  }
}

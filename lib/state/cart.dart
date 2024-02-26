import 'package:flutter/material.dart';
import 'package:shop_flutter/model/cart.dart';

class CartState extends ChangeNotifier {
  List<CartModel> _items = [];

  List<CartModel> get items => _items;

  void add(CartModel item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(CartModel item) {
    _items.remove(item);
    notifyListeners();
  }
}

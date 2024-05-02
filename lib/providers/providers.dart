import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intel_traffic/common/card_cases.dart';

final cartProvider = ChangeNotifierProvider((ref) => CartNotifier());

class CartNotifier extends ChangeNotifier {
  List<Widget> _myCart = [
    CardDesigner(
      amount: '1500',
      location: 'GorakhPur Mohadipur',
    ),
    CardDesigner(
      amount: '500',
      location: 'Gorakhpur Kuraghat',
    )
  ];

  List<Widget> get myCart => _myCart;

  void addToCart(Widget product) {
    if (!_myCart.contains(product)) {
      _myCart.add(product);
    }
    notifyListeners();
  }

  void removeFromCart(String location) {
  _myCart.removeWhere((widget) => widget is CardDesigner && widget.location == location);
  notifyListeners();
}

}

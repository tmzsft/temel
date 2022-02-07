import 'package:flutter/cupertino.dart';

import 'package:temel/view/denemeler/list/model/product.dart';

class CartModel with ChangeNotifier {
  List<Product> productList = [];
  double totalPrice = 0;
  int totalAmount = 0;
  int totalAmount2 = 0;

  // CartModel({
  //   required this.productList,
  //   required this.totalPrice,
  //   required this.totalAmount,
  // });

  Future<String> get hesaplaGetir {
    final toplamTutar = Future.delayed(Duration(seconds: 1), () {
      return 'çok para';
    });
    return toplamTutar;
  }

  List<Product> get getCardList => productList;

  void AddItemToCart(Product item) {
    productList.add(item);
    totalAmount += 1;
    if (totalAmount <= 3) {
      totalAmount2 += 1;
    }
    totalPrice += item.productPrice;
    notifyListeners();
  }

  void RemoveItemFromCart(Product item) {
    productList.remove(item);
    totalAmount -= 1;
    totalPrice -= item.productPrice;
    notifyListeners();
  }
}

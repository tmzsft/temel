import 'package:flutter/cupertino.dart';

class CurrencyModel extends ValueNotifier<Currency> {
  final List<Currency> list = [];

  CurrencyModel(Currency value) : super(value) {
    list.add(value);
  }
  int get getTotal => list.length;

  void addCurrency(Currency item) {
    list.add(item);
    notifyListeners();
  }
}

class Currency {
  final String cType;
  final int cAmount;

  Currency(this.cType, this.cAmount);
}

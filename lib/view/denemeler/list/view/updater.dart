import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temel/view/denemeler/cart/model/cart_model.dart';

class Updater extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Updater build");
    return
        // FutureProvider<String>(
        //     create: (context) => hesaplaGetir2,
        //     initialData: "fetching address...",
        //     child: Text(Provider.of<CartModel>(context).totalAmount.toString()));

        Selector<CartModel, int>(
            selector: (_, model) => model.totalAmount,
            builder: (_, model, __) {
              print("Selector build");
              return Text(model.toString());
            });
  }

  Future<String> get hesaplaGetir2 {
    final toplamTutar = Future.delayed(Duration(seconds: 1), () {
      return 'çok para';
    });
    return toplamTutar;
  }
}

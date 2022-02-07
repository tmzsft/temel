import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temel/view/denemeler/cart/model/cart_model.dart';
import 'package:temel/view/denemeler/list/view/prodcut_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var sprov = Stream<int>.periodic(Duration(seconds: 1), (x) => x);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CartModel>(
              create: (cartModelContext) => CartModel()),
          StreamProvider<int>(
            create: (futureContext) => sprov,
            initialData: 0,
            // child: Builder(builder: (BuildContext context) => childy())
          )
          // Consumer<int>(
          //     builder: (context, sayi, child) => Text(sayi.toString()))
        ],
        child: const MaterialApp(
          home: ProductListView(),
        ));

    //ProductListView();

    // title: 'Flutter Demo',
    // theme: ThemeData(
    //   primarySwatch: Colors.blue,
    // ),
    // ChangeNotifierProvider<CartModel>(
    //     create: (cartModelContext) => CartModel(
    //         productList: productList2, totalAmount: 1, totalPrice: 100),
    //     child: const ProductListView());
  }
}

class childy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final count = context.watch<int>();
    // print(count.toString());
    return Text("childy");
  }
}

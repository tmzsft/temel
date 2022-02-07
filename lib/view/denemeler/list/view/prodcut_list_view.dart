import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temel/view/denemeler/cart/model/cart_model.dart';
import 'package:temel/view/denemeler/cart/view/card_view.dart';
import 'package:temel/view/denemeler/list/model/product.dart';
import 'package:temel/view/denemeler/list/view/updater.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  List<Product> productList = [];

  @override
  void initState() {
    print("productList initState");
    /*Ürün Listesi*/
    if (productList.isEmpty) {
      productList.add(Product("atari", 1500, "Hepsiburada"));
      productList.add(Product("bardak", 75, "Hepsiburada"));
      productList.add(Product("AT", 35000, "N11"));
      productList.add(Product("bisiklet", 3750, "MediaMarkt"));
      productList.add(Product("atari", 2500, "Teknoda"));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("productList build");
    final cart = Provider.of<CartModel>(context, listen: false).productList;
    int cartCount = cart.length;
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CardView()));
            },
            // child: const Center(child: Icon(Icons.shopping_cart)),
            child: Stack(
              children: <Widget>[
                const IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),

                // ? Container()
                Positioned(
                    child: Stack(
                  children: <Widget>[
                    Icon(Icons.brightness_1,
                        size: 20.0, color: Colors.red[800]),
                    Positioned(
                        top: 4.0,
                        right: 6.0,
                        child: Center(
                            child:

                                //ayrı widget
                                Updater()

                            //her seferinde productList buildini tetiklemiyor
                            //totalAmount değişmediği sürece notify'dan etkilenmez.
                            // Selector<CartModel, int>(
                            //     selector: (_, model) => model.totalAmount,
                            //     builder: (_, model, __) {
                            //       print("Selector build");
                            //       return cartCount == 0
                            //           ? Text("0")
                            //           : Text(model.toString());
                            //     })

                            //her seferinde productList buildini tetiklemiyor
                            //         Consumer<CartModel>(
                            //   builder: (context, model, child) {
                            //     print("consumer build");
                            //     return Text(
                            //       model.totalAmount.toString(),
                            //       style: const TextStyle(
                            //           color: Colors.white,
                            //           fontSize: 11.0,
                            //           fontWeight: FontWeight.w500),
                            //     );
                            //   },
                            // )

                            //her seferinde productList buildini tetikliyor
                            // Text(Provider.of<CartModel>(context)
                            //     .totalAmount
                            //     .toString())

                            )),
                  ],
                )),
              ],
            ),
          )
        ],
        title: const Center(child: Text("Product List")),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
            itemCount: productList.length,
            itemBuilder: (listViewContext, index) {
              return ListTile(
                tileColor: Colors.blue[50],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                leading: const Icon(Icons.new_label),
                isThreeLine: true,
                title: Text(productList[index].productName),
                subtitle: Text("Satıcı: " +
                    productList[index].productSeller +
                    "\nPrice : " +
                    productList[index].productPrice.toString()),
                trailing: ElevatedButton(
                  onPressed: () {
                    Provider.of<CartModel>(context, listen: false)
                        .AddItemToCart(productList[index]);
                    print(productList[index].productName + " sepete eklendi");

                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(productList[index].productName.toString() +
                          " sepete eklendi"),
                      duration: const Duration(seconds: 2),
                      action: SnackBarAction(
                        onPressed: () {},
                        label: 'TAMAM',
                      ),
                    ));

                  },
                  child: Icon(Icons.add_shopping_cart_sharp),
                ),
                onTap: () {
                  print(productList[index].productName + " seçildi");
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                thickness: 1,
              );
            },
          ),
        ),
      ),
    );
  }
}

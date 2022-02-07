import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temel/view/denemeler/cart/model/cart_model.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  void initState() {
    print("cart initState");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool dene = true;
    print("cart build");
    // int deneme = Provider.of<int>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Sepet")),
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: const Center(
                child: Icon(Icons.delete_sharp),
              ),
            )
          ],
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Consumer<int>(builder: (context, model, child) {
                  return Text(model.toString());
                })

                //Column(
                // children: const [
                // Consumer<int>(
                //     builder: (context, sayi, child) =>
                //         Text(sayi.toString()))
//                     ListView.separated(
//                         separatorBuilder: (BuildContext context, int index) {
//                           return Divider();
//                         },
//                         itemBuilder: (listViewContext, index) {
//                           return ListTile(
//                             tileColor: Colors.blue[50],
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10.0)),
//                             leading: const Icon(Icons.new_label),
//                             isThreeLine: false,
//                             title: //Consumer<CartModel>(
//                                 //builder: (context, cart, child) =>
// //                                Text(cart.productList[index].productName),
//                                 Text("asdsada"),
//                             //),
//                             trailing: ElevatedButton(
//                               onPressed: () {
//                                 // print(productList[index].productName + " sepete eklendi");
//                               },
//                               child: Icon(Icons.delete_sharp),
//                             ),
//                             onTap: () {
//                               // print(productList[index].productName + " seçildi");
//                             },
//                           );
//                         },
//                         itemCount: 3 //cart.getCardList.length
//                         )
                // ],
                )));
  }
}

import 'package:flutter/material.dart';
import 'package:temel/core/base/state/base_state.dart';
import 'package:temel/view/denemeler/dene1/model/currency.dart';

class Dene1View extends StatefulWidget {
  const Dene1View({Key? key}) : super(key: key);

  @override
  _Dene1ViewState createState() => _Dene1ViewState();
}

class _Dene1ViewState extends State<Dene1View> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  // final ValueNotifier<CurrencyModel> _currencyModel =
  //     ValueNotifier<CurrencyModel>(CurrencyModel(Currency("euro", 20)));

  int countItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            color: Colors.red[100],
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    left: 20,
                    bottom: -40,
                    child: GestureDetector(
                        onTap: () {
                          debugPrint("Butona tıklandı");
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Icon(
                            Icons.content_copy,
                            color: Colors.white,
                            size: 40,
                          ),
                        ))),
                Positioned(
                    right: 20,
                    bottom: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        _counter.value++;
                        countItem++;
                        // _currencyModel.value
                        // .addCurrency(Currency("dolar", countItem));
                      },
                      child: const Text("Artır"),
                    )),
                // Positioned(
                //   right: 20,
                //   bottom: 20,
                //   child: ValueListenableBuilder<CurrencyModel>(
                //       valueListenable: _currencyModel,
                //       builder: (valueListenableBuilderContext, currency, _) {
                //         return Text("asdasd" + currency.list.length.toString());
                //       }),
                // ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: ValueListenableBuilder<int>(
                    valueListenable: _counter,
                    builder: (context, value, child) => Container(
                      width: 300,
                      height: 300,
                      color: value % 2 == 0 ? Colors.blue : Colors.red,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: child),
                          Center(child: Text("new value is => " + value.toString()))
                        ],
                      ),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Colors.green,
                      ),
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Text(
                            "old value is => " + _counter.value.toString()),
                      ),
                    ),
                  ),
                )
                // FloatingActionButton(
                //   onPressed: () => _counter.value++,
                //   tooltip: 'Artır',
                //   child: Icon(Icons.add),
                // )
              ],
            )));
  }
}


// ValueListenableBuilder(context, counter, _) => {
//                         return Text(counter.toString()); }
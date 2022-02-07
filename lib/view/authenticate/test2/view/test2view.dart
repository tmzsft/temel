// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:temel/view/authenticate/test4/liste.dart';

// import 'package:temel/view/authenticate/test3/view/test3view.dart';
import 'package:temel/view/authenticate/test4/test4view.dart';

class Test2View extends StatefulWidget {
  const Test2View({Key? key}) : super(key: key);
  @override
  _Test2ViewState createState() => _Test2ViewState();
}

class _Test2ViewState extends State<Test2View> {
  List<Liste> productList = [
    Liste("Prop1Title", "Prop1Details", "Prop1Price"),
    Liste("Prop2Title", "Prop2Details", "Prop2Price"),
    Liste("Prop3Title", "Prop3Details", "Prop3Price"),
    Liste("Prop4Title", "Prop4Details", "Prop4Price"),
    Liste("Prop5Title", "Prop5Details", "Prop5Price")
  ];
  String tst2 = "Test2Den gelme";
  String strSon = "main bar";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // productList.add(Liste("Prop1Title", "Prop1Details", "Prop1Price"));
    return Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(title: Text(strSon)),
        // ignore: prefer_const_constructors
        body: Center(
            child: ListView(
                children: productList
                    .map((item) => Test4View(
                        cllbckCons: (String item) {
                          setState(() {
                            strSon = item;
                          });
                        },
                        listItem: item))
                    .toList())));

    // ElevatedButton(
    //     child: const Text("3'e gönder beni"),
    //     onPressed: () {
    //       Navigator.push(context,
    //           MaterialPageRoute(builder: (context) => const Test3View()));
    //     },
    //     autofocus: true,
    //     style: ElevatedButton.styleFrom(
    //         textStyle: const TextStyle(fontSize: 20))),
  }

  denemeFunc(String item) {
    setState(() {
      strSon = item;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temel/view/authenticate/test/viewmodel/test_view_model.dart';
import 'package:temel/view/denemeler/cart/model/cart_model.dart';
import 'package:temel/view/denemeler/list/view/prodcut_list_view.dart';
import 'package:temel/view/home/home_view.dart';

import 'core/base/view/base_view.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  late TestViewModel lateModel;
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewModel: TestViewModel(),
        onModelReady: (model) {
          // print("onModelReady içi");
          lateModel = model;
        },
        onPageBuilder: (context, model) =>
            const MaterialApp(home: HomeView(), debugShowCheckedModeBanner: false)
        // Scaffold(
        //     appBar: AppBar(title: Text("naber")),
        //     body: Center(child: Text("sadsad"))))
        // const MaterialApp(
        //     home: HomeView(), debugShowCheckedModeBanner: false)
        );
  }

  // Widget get scaff => Scaffold(
  //       // ignore: prefer_const_constructors
  //       appBar: AppBar(title: Text("scaf app bar")),
  //       // ignore: prefer_const_constructors
  //       body: Center(
  //         child: const Text("helo"),
  //       ),
  //     );
}

// class BaseView3<T> extends StatefulWidget {
//   final Widget Function(BuildContext context, T value) onPageBuilder;
//   final T viewModel;
//   final Function(T vModel) onModelReady;
//   const BaseView3(
//       {Key? key,
//       required this.viewModel,
//       required this.onModelReady,
//       required this.onPageBuilder})
//       : super(key: key);

//   @override
//   _BaseView3State createState() => _BaseView3State();
// }

// class _BaseView3State extends State<BaseView3> {
//   @override
//   Widget build(BuildContext context) {
//     // print("BW3 state build");
//     return Scaffold(
//       // ignore: prefer_const_constructors
//       appBar: AppBar(title: Text("naber")),
//       // ignore: prefer_const_constructors
//       body: Center(
//         child: const Text("centerda"),
//       ),
//     );
//   }
// }

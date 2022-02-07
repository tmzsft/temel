// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:temel/core/base/state/base_state.dart';
import 'package:temel/view/authenticate/test/viewmodel/test_view_model.dart';

class TestsView extends StatefulWidget {
  const TestsView({Key? key}) : super(key: key);

  @override
  _TestsViewState createState() => _TestsViewState();
}

class _TestsViewState extends BaseState<TestsView> {
  late TestViewModel lateModel;
  @override
  Widget build(BuildContext context) {
    return BaseView2<TestViewModel>(
        viewModel: TestViewModel(),
        onModelReady: (model) {
          lateModel = model;
        });
    // return Scaffold(
    //   appBar: AppBar(title: Text("Naber")),
    //   body: Column(
    //     // ignore: prefer_const_literals_to_create_immutables
    //     children: [Center(child: Text("Hello"))],
    //   ),
    // );

    // return Container(
    //   height: heightdouble
    // );
  }
}

class BaseView2<T> extends StatefulWidget {
  final T viewModel;
  final Function(T vModel) onModelReady;
  const BaseView2(
      {Key? key, required this.viewModel, required this.onModelReady})
      : super(key: key);

  @override
  _BaseView2State createState() => _BaseView2State();
}

class _BaseView2State extends State<BaseView2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

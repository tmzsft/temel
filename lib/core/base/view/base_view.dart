import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  //Context ile T modeli de dönüyoruz bu sınıfı kullanana
  final Widget Function(BuildContext context, T value) onPageBuilder;
  //T modeli tek kaynaktan kullanmak için aldık
  final T viewModel;
  //T modeli dönüyoruz
  final Function(T model) onModelReady;
  // final VoidCallback onDispose;

  const BaseView({
    Key? key,
    required this.viewModel,
    required this.onModelReady,
    // required this.onDispose,
    required this.onPageBuilder,
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T> extends State<BaseView<T>> {
  late T model;
  @override
  void initState() {
    model = widget.viewModel;
    widget.onModelReady(model);

    // widget.onModelReady(widget.viewModel);
    super.initState();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, widget.viewModel);
  }
}

import 'package:flutter/material.dart';

class BaseViewCopy<T> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) onPageBuilder;
  final T viewModel;
  final Function(T model) onModelReady;
  const BaseViewCopy(
      {Key? key, required this.viewModel, required this.onModelReady, required this.onPageBuilder})
      : super(key: key);

  @override
  _BaseViewCopyState<T> createState() => _BaseViewCopyState<T>();
}

class _BaseViewCopyState<T> extends State<BaseViewCopy<T>> {
  late T model;
  @override
  void initState() {
    //modelde değişiklik/ekleme yapacaksak callback ile göndermeden yapalım.
    model = widget.viewModel;
    widget.onModelReady(model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

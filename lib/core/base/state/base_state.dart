import 'package:flutter/material.dart';
// import 'package:temel/core/constants/Names.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  //sayfgalarda kullanılacak ortak şeyleri buraya göm
  ThemeData get themeData => Theme.of(context);
  String get appName => "Sosyal Saat";
  double get heightdouble => 5;
}

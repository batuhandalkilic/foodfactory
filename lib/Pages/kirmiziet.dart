import 'package:flutter/material.dart';
import 'package:foodfactory/component/menu.dart';
import '../veriler/class.dart';

class Kirmizietler extends StatelessWidget {
  const Kirmizietler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MenuList(
      sliverResim: "assets/images/anaresimler/kirmiziet.jpg",
      list: kirmiziEtMenu,
    );
  }
}

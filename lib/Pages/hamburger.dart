import 'package:flutter/material.dart';
import 'package:foodfactory/component/menu.dart';
import '../veriler/class.dart';

class Hamburgerler extends StatelessWidget {
  const Hamburgerler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MenuList(
      sliverResim: "assets/images/anaresimler/hamburgers.jpg",
      list: hamburgerMenu,
    );
  }
}

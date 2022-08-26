import 'package:flutter/material.dart';
import 'package:foodfactory/component/menu.dart';
import '../veriler/class.dart';

class Icecekler extends StatelessWidget {
  const Icecekler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MenuList(
      sliverResim: "assets/images/anaresimler/icecekler.jpg",
      list: iceceklerMenu,
    );
  }
}

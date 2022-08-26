import 'package:flutter/material.dart';
import 'package:foodfactory/veriler/class.dart';
import 'package:foodfactory/component/menu.dart';

class TavukEtleri extends StatelessWidget {
  const TavukEtleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MenuList(
      sliverResim: "assets/images/anaresimler/tavuketi.jpg",
      list: tavukMenu,
    );
  }
}

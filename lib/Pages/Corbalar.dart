// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:foodfactory/component/menu.dart';
import '../veriler/class.dart';

class Corbalar extends StatelessWidget {
  const Corbalar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Yemek corbaBilgi = ModalRoute.of(context)!.settings.arguments as Yemek;
    // ignore: prefer_const_constructors
    return MenuList(
      sliverResim: corbaBilgi.path,
      list: corbaMenu,
    );
  }
}

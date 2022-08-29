// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodfactory/sayfagecisi.dart';
import 'login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Gothom-Medium"),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: OnGeneratedRoute.sayfagecisi,
      title: 'Material App',
      /*  home: LoginPage(), */
    );
  }
}

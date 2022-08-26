// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodfactory/yemeksayfasi.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Container(
          color: Color.fromARGB(255, 14, 5, 23),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: Column(children: [
                    Expanded(child: tanitim()),
                    Expanded(child: LoginButtons()),
                  ]),
                ),
              ),
              /* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Giriş"),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                ],
              ) */
            ],
          ),
        ),
      )),
    );
  }

  Padding tanitim() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            child: Image.asset(
              scale: 5,
              "assets/images/logo/logo.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              "BaGü Restaurant",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Özel ve Lezzetli Yemek",
            style: TextStyle(
                letterSpacing: 2,
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

//zamanı gelince Statefulwidget ile.
class LoginButtons extends StatelessWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => YemekSayfasi())));
              },
              child: Text(
                "Giriş",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Kayıt",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 234, 227, 226)),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodfactory/yemeksayfasi.dart';
import 'package:email_validator/email_validator.dart';
import './db/veritabani.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 14, 5, 23),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Column(children: [
                      tanitim(),
                      SizedBox(
                        height: 50,
                      ),
                      LoginButtons(),
                    ]),
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
class LoginButtons extends StatefulWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  State<LoginButtons> createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  late TextEditingController _kullaniciContoler, _sifreContoler;
  VeritabaniIslemleri admin = VeritabaniIslemleri();
  VeritabaniIslemleri user1 =
      VeritabaniIslemleri.loginWithnameandPassword("batu@gmail", "010615");
  late bool _passwordhidden;
  String _kullaniciEmail = " ", _sifre = " ";
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    _kullaniciContoler = TextEditingController();
    _sifreContoler = TextEditingController();
    _passwordhidden = true;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _kullaniciContoler.dispose();
    _sifreContoler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            controller: _kullaniciContoler,
            onChanged: (value) {
              setState(() {
                _kullaniciContoler.value = TextEditingValue(
                  text: value,
                  selection: TextSelection.collapsed(offset: value.length),
                );
              });
            },
            onSaved: ((newValue) {
              _kullaniciEmail = newValue!;
            }),
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (EmailValidator.validate(value!)) {
                return null;
              } else {
                return "Email Adresinizi giriniz";
              }
            },
            autofocus: true,
            autocorrect: true,
            decoration: InputDecoration(
              errorStyle: TextStyle(
                color: Color.fromARGB(255, 253, 253, 253),
              ),
              labelText: "Email Adresi",
              labelStyle: TextStyle(
                  color: Color.fromARGB(255, 14, 5, 23),
                  decorationStyle: TextDecorationStyle.dotted),
              hintText: "Bagü@gmail.com",
              hintStyle: TextStyle(fontSize: 11),
              prefixIcon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 14, 5, 23),
              ),
              filled: true,
              fillColor: Color.fromARGB(255, 198, 187, 187),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _sifreContoler,
            onChanged: (value) {
              setState(() {
                _sifreContoler.value = TextEditingValue(
                  text: value,
                  selection: TextSelection.collapsed(offset: value.length),
                );
              });
            },
            onSaved: ((newValue) {
              _sifre = newValue!;
            }),
            validator: (value) {
              if (value!.isEmpty) {
                return "Şifrenizi giriniz";
              } else {
                return null;
              }
            },
            cursorColor: Colors.black,
            obscureText: _passwordhidden,
            autocorrect: true,
            decoration: InputDecoration(
              errorStyle: TextStyle(color: Colors.white),
              labelText: "Şifre",
              labelStyle: TextStyle(
                color: Colors.black,
              ),
              prefixIcon:
                  Icon(Icons.person, color: Color.fromARGB(255, 14, 5, 23)),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordhidden = !_passwordhidden;
                    });
                  },
                  icon: Icon(
                    _passwordhidden ? Icons.visibility_off : Icons.visibility,
                    color: Color.fromARGB(255, 27, 26, 26),
                  )),
              filled: true,
              fillColor: Color.fromARGB(255, 198, 187, 187),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    onPressed: () {
                      bool validation = _formkey.currentState!
                          .validate(); // Kullanıcı her şeyi doğru yapmış mı git bak!
                      if (validation) {
                        _formkey.currentState!
                            .save(); // onsaveler çalıştı! ve referanslar atandı
                        if (veriKonrol(
                            _kullaniciContoler.text, _sifreContoler.text)) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: ((context) => YemekSayfasi())));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.white,
                              content: Text(
                                "Mail ya da Parola hatalı",
                                style: TextStyle(color: Colors.red),
                              )));
                        }
                      }
                    },
                    child: Text(
                      "Giriş",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 191, 37, 13)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool veriKonrol(String kullaniciadi, String sifree) {
    if (VeritabaniIslemleri.baglan(kullaniciadi, sifree)) {
      return true;
    } else {
      return false;
    }
  }
}

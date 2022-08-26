// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'veriler/class.dart';

class YemekSayfasi extends StatelessWidget {
  YemekSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() {
        return Future.value(false);
      }),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            color: Color.fromARGB(255, 14, 5, 23),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: double.infinity,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        "Lezzetlerimiz",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black, BlendMode.lighten),
                            isAntiAlias: true,
                            alignment: Alignment.centerRight,
                            opacity: 0.7,
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "assets/images/anaresimler/lezzetlerimiz.jpg"))),
                  ),
                ),
                Expanded(child: Menu()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu({super.key});
  @override
  Widget build(BuildContext context) {
    List<Yemek?> yemekList = menuBilgi;

    return ListView.builder(
      itemCount: yemekList.length,
      itemBuilder: (BuildContext context, int index) {
        Yemek? oankiyemekobject = yemekList[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/${oankiyemekobject!.yemekAdi}",
                arguments: oankiyemekobject);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.red,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(oankiyemekobject!.path))),
                    ),
                    Text(
                      oankiyemekobject.yemekAdi,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

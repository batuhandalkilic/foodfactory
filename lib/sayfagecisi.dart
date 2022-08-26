import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodfactory/yemeksayfasi.dart';
import 'Pages/Corbalar.dart';
import 'Pages/hamburger.dart';
import 'Pages/icecekler.dart';
import 'Pages/kirmiziet.dart';
import 'Pages/salata.dart';
import 'Pages/tavuketi.dart';

class OnGeneratedRoute {
  static Route<dynamic>? sayfagecisi(RouteSettings settings) {
    switch (settings.name) {
      case "/YemekSayfasi":
        return routeOlusturma(YemekSayfasi(), settings);
      case "/Çorbalar":
        return routeOlusturma(const Corbalar(), settings);
      case "/Kırmızı Et":
        return routeOlusturma(const Kirmizietler(), settings);
      case "/Tavuk Eti":
        return routeOlusturma(const TavukEtleri(), settings);
      case "/Hamburger":
        return routeOlusturma(const Hamburgerler(), settings);
      case "/Salata":
        return routeOlusturma(const Salatalar(), settings);
      case "/İçecekler":
        return routeOlusturma(const Icecekler(), settings);

      default:
        return MaterialPageRoute(builder: ((context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("HATA"),
            ),
            body: Center(
              child: Column(
                children: const [Text("Hata sayfası")],
              ),
            ),
          );
        }));
    }
  }

  static PageRoute<dynamic> routeOlusturma(
      Widget gidelecekRoute, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          settings: settings, builder: ((context) => gidelecekRoute));
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          settings: settings, builder: ((context) => gidelecekRoute));
    } else {
      return MaterialPageRoute(
          settings: settings, builder: ((context) => gidelecekRoute));
    }
  }
}

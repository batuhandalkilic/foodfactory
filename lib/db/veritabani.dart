import 'dart:math';

class VeritabaniIslemleri {
  String? _kullanicidiAdi;
  String? _sifre;
  final String adminMail = "admin@gmail.com";
  final String adminsifre = "1234admin";

  static bool baglan(gelenAd, gelenSifre) {
    if (_internetVarMi()) {
      if (gelenAd == "admin@gmail.com" && gelenSifre == "1234admin") {
        return true;
      }
      if (gelenAd == "guba1@outlook.com" && gelenSifre == "010615") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  VeritabaniIslemleri();
  VeritabaniIslemleri.loginWithnameandPassword(String a, String b) {
    this._kullanicidiAdi = a.toLowerCase();
    this._sifre = b;
  }

  static bool _internetVarMi() {
    if (/* Random().nextBool() */ true) {
      return true;
    } else {
      return false;
    }
  }
}

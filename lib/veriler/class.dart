class MenuYarat {
  final String resim;
  final String corbaAdi;
  final int corbaFiyati;

  MenuYarat(this.resim, this.corbaAdi, this.corbaFiyati);
}

class Yemek {
  final String yemekAdi;
  final String path;

  Yemek(
    this.yemekAdi,
    this.path,
  );
}

List<MenuYarat> corbaMenu = [mercimek, domates, mantar, yayla, kellepaca];
List<MenuYarat> salataMenu = [
  mevsimSalata,
  havucsalatasi,
  kerevizsalatasi,
  russalatasi,
  sezarsalata,
  sogus,
];
List<MenuYarat> hamburgerMenu = [
  baconburger,
  beanburger,
  cheeseburger,
  elkburger,
  pineappleburger,
  turkeyburger,
  vegieburger
];
List<MenuYarat> iceceklerMenu = [
  kutuKola,
  kolacam,
  fanta,
  sprite,
  salgam,
  ayran,
  su
];
List<MenuYarat> tavukMenu = [
  grilledChicken,
  airfryerchickenbreast,
  chickenFlautas,
  chickenFajitas,
  chickenWings,
  creamyTuscanChicken,
  chickenFriedRice
];
List<MenuYarat> kirmiziEtMenu = [
  beefwellington,
  beefgoulash,
  beefschnitzel,
  beeftacos,
  beefsteack,
  beefcurry,
  beefragout
];

List<Yemek?> menuBilgi = <Yemek>[
  corba,
  kirmiziet,
  tavuketi,
  hamburgers,
  salata,
  icecekler
];

Yemek corba = Yemek("Çorbalar", "assets/images/anaresimler/corba.png");
Yemek kirmiziet =
    Yemek("Kırmızı Et", ("assets/images/anaresimler/kirmiziet.jpg"));
Yemek tavuketi = Yemek("Tavuk Eti", ("assets/images/anaresimler/tavuketi.jpg"));
Yemek hamburgers =
    Yemek("Hamburger", ("assets/images/anaresimler/hamburgers.jpg"));
Yemek salata = Yemek("Salata", ("assets/images/anaresimler/salata.jpg"));
Yemek icecekler =
    Yemek("İçecekler", ("assets/images/anaresimler/icecekler.jpg"));

MenuYarat beefwellington = MenuYarat(
    "assets/images/kirmizietresimleri/beefwellington.jpeg",
    "Beef Wellington",
    85);
MenuYarat beefgoulash = MenuYarat(
    "assets/images/kirmizietresimleri/beefgoulash.jpeg", "Beef Goulash", 80);
MenuYarat beefschnitzel = MenuYarat(
    "assets/images/kirmizietresimleri/beefschnitzel.jpeg",
    "Beef Schnitzel",
    80);
MenuYarat beeftacos = MenuYarat(
    "assets/images/kirmizietresimleri/beeftacos.jpeg", "Beef Tacos", 85);
MenuYarat beefsteack = MenuYarat(
    "assets/images/kirmizietresimleri/beefsteack.jpeg", "Beef Steack", 80);
MenuYarat beefcurry = MenuYarat(
    "assets/images/kirmizietresimleri/beefcurry.jpeg", "Beef Curry", 85);
MenuYarat beefragout = MenuYarat(
    "assets/images/kirmizietresimleri/beefragout.jpeg", "Beef Ragout", 85);

MenuYarat grilledChicken = MenuYarat(
    "assets/images/tavukresimleri/grilledchicken.jpeg", "Grilled Chicken", 45);
MenuYarat airfryerchickenbreast = MenuYarat(
    "assets/images/tavukresimleri/airfryerchickenbreast.jpeg",
    "Air Fryer Chicken Breast",
    40);
MenuYarat chickenFlautas = MenuYarat(
    "assets/images/tavukresimleri/chickenflautas.jpeg", "Chicken Flautas", 35);
MenuYarat chickenFajitas = MenuYarat(
    "assets/images/tavukresimleri/chickenfajitas.jpeg", "Chicken Fajitas", 45);
MenuYarat chickenWings = MenuYarat(
    "assets/images/tavukresimleri/chickenwings.jpeg", "Chicken Wings", 40);
MenuYarat creamyTuscanChicken = MenuYarat(
    "assets/images/tavukresimleri/creamytuscanchicken.jpeg",
    "Creamy Tuscan Chicken",
    45);
MenuYarat chickenFriedRice = MenuYarat(
    "assets/images/tavukresimleri/chickenfriedrice.jpeg",
    "Chicken Fried Rice",
    45);

MenuYarat kutuKola =
    MenuYarat("assets/images/icecekresimleri/kola.jpeg", "Kutu Kola", 15);
MenuYarat kolacam =
    MenuYarat("assets/images/icecekresimleri/kolacam.jpeg", "Cam Kola", 15);
MenuYarat fanta =
    MenuYarat("assets/images/icecekresimleri/fanta.jpeg", "Fanta", 15);
MenuYarat sprite =
    MenuYarat("assets/images/icecekresimleri/sprite.jpeg", "Sprite", 15);
MenuYarat salgam =
    MenuYarat("assets/images/icecekresimleri/salgam.jpeg", "Salgam", 12);
MenuYarat ayran =
    MenuYarat("assets/images/icecekresimleri/ayran.jpeg", "Ayran", 12);
MenuYarat su = MenuYarat("assets/images/icecekresimleri/su.jpeg", "Su", 10);

MenuYarat baconburger = MenuYarat(
    "assets/images/hamburgerresimleri/baconburger.jpeg", "Bacon Burger ", 69);
MenuYarat beanburger = MenuYarat(
    "assets/images/hamburgerresimleri/beanburger.jpeg", "Bean Burger ", 69);
MenuYarat cheeseburger = MenuYarat(
    "assets/images/hamburgerresimleri/cheeseburger.jpeg", "CheesBurger ", 89);
MenuYarat elkburger = MenuYarat(
    "assets/images/hamburgerresimleri/elkburger.jpeg", "Elk Burger ", 79);
MenuYarat pineappleburger = MenuYarat(
    "assets/images/hamburgerresimleri/pineappleburger.jpeg",
    "Pineapple Burger ",
    69);
MenuYarat turkeyburger = MenuYarat(
    "assets/images/hamburgerresimleri/turkeyburger.jpeg", "Turkey Burger ", 79);
MenuYarat vegieburger = MenuYarat(
    "assets/images/hamburgerresimleri/vegieburger.jpeg",
    "Vejeteryan Burger ",
    59);

MenuYarat mercimek = MenuYarat(
    "assets/images/corbaresimleri/mercimek.jpg", "Mercimek Çorbası", 20);
MenuYarat domates = MenuYarat(
    "assets/images/corbaresimleri/domates.jpg", "Domates Çorbası", 23);
MenuYarat mantar =
    MenuYarat("assets/images/corbaresimleri/mantar.jpg", "Mantar Çorbası", 25);
MenuYarat yayla =
    MenuYarat("assets/images/corbaresimleri/yayla.jpg", "Yayla Çorbası", 21);
MenuYarat kellepaca = MenuYarat(
    "assets/images/corbaresimleri/kelle.jpg", "Kelle Paça Çorbası", 21);

MenuYarat mevsimSalata = MenuYarat(
    "assets/images/salataresimleri/mevsimsalata.jpg", "Mevsim Salatası ", 25);
MenuYarat havucsalatasi = MenuYarat(
    "assets/images/salataresimleri/havucsalatası.jpg", "Havuç Salatası", 20);
MenuYarat kerevizsalatasi = MenuYarat(
    "assets/images/salataresimleri/kerevizsalatasi.jpg",
    "Kereviz Salatası",
    32);
MenuYarat russalatasi = MenuYarat(
    "assets/images/salataresimleri/russalatasi.jpg", "Rus Salatası", 50);
MenuYarat sezarsalata = MenuYarat(
    "assets/images/salataresimleri/sezarsalata.jpg", "Sezar Salatası", 30);
MenuYarat sogus =
    MenuYarat("assets/images/salataresimleri/sogus.jpg", "Söğüş Salatası", 29);

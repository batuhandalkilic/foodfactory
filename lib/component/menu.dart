import 'package:flutter/material.dart';
import '../veriler/class.dart';

class MenuList extends StatelessWidget {
  final String sliverResim;
  final List<MenuYarat>? list;

  const MenuList({
    Key? key,
    required this.sliverResim,
    this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 14, 5, 23),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: false,
                snap: true,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    sliverResim,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      _dinamikElamanUretenFonksiyon,
                      childCount: list!.length)),
            ],
          ),
        ),
      ),
    );
  }

  Padding _dinamikElamanUretenFonksiyon(
    BuildContext context,
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomListItem(
            fiyat: "${list![index].corbaFiyati}₺",
            yemekresmi: list![index].resim,
            yemekadi: list![index].corbaAdi,
            icindekiler: "lorem" * 10,
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Color.fromARGB(255, 85, 99, 89),
          )
        ],
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.yemekresmi,
    required this.yemekadi,
    required this.icindekiler,
    required this.fiyat,
  }) : super(key: key);

  final String yemekresmi;
  final String yemekadi;
  final String icindekiler;
  final String fiyat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 110,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.asset(
                  yemekresmi,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _YemekBilgileri(
                  yemekadi: yemekadi,
                  icindekiler: icindekiler,
                  fiyat: fiyat,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _YemekBilgileri extends StatelessWidget {
  const _YemekBilgileri({
    Key? key,
    required this.yemekadi,
    required this.icindekiler,
    required this.fiyat,
  }) : super(key: key);

  final String yemekadi;
  final String icindekiler;
  final String fiyat;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                yemekadi,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color.fromARGB(255, 244, 8, 8),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                icindekiler,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Color.fromARGB(137, 171, 155, 155),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fiyat.toString(),
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                  OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          primary: const Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text("Sepete Ekle"))
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

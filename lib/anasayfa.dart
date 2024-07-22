import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/Renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var d=AppLocalizations.of(context);



    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;

    print("ekran yüksekliği= $ekranYuksekligi");
    print("ekran genişliği=  $ekranGenisligi");
    




    return Scaffold(
      appBar: AppBar(
        title: Text(d!.pizzaBaslik,
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Pacifico",
            fontSize: ekranGenisligi/16,
          ),
        ),
        centerTitle: true,
        backgroundColor: anaRenk,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(d.pizzaBaslik,
              style: TextStyle(
                fontSize: 20,
                color: anaRenk,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChipWidget(icerik: d.pizzaBaslik),
                ChipWidget(icerik: d.sucukYazi),
                ChipWidget(icerik: d.biberYazi),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  d.teslimatSure,
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Text(
                  d.teslimatBaslik,
                  style: TextStyle(
                    fontSize: 22,
                    color: anaRenk,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  d.pizzaAciklama,
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      d.fiyat,
                      style: TextStyle(
                        fontSize: 40,
                        color: anaRenk,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width:ekranGenisligi/2.25,
                      height:ekranYuksekligi/14,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          d.butonYazi,
                          style: TextStyle(color: yaziRenk1),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: anaRenk,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  String icerik;

  ChipWidget({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        icerik,
        style: TextStyle(color: yaziRenk1),
      ),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}

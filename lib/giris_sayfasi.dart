import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './constants.dart';
import './ikon_cinsiyet.dart';
import './my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double sigaraSayisi = 0.0;
  double yapilanSpor = 1.0;
  int boy = 170;
  int kilo = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildRow(boy, "BOY"),
                  ),
                ),
                Expanded(
                  child: MyContainer(child: buildRow(kilo, "KİLO")),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Haftada Kaç Gün Spor Yapıyorsunuz?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(
                    yapilanSpor.round().toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.lightBlue),
                  ),
                  Slider(
                      divisions: 7,
                      min: 0,
                      max: 7,
                      value: yapilanSpor,
                      onChanged: (double deger) {
                        setState(() {
                          yapilanSpor = deger;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" Günde Kaç Sigara İçiyorsunuz?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(sigaraSayisi.round().toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.lightBlue)),
                  Slider(
                      min: 0,
                      max: 30,
                      value: sigaraSayisi,
                      onChanged: (double deger) {
                        setState(() {
                          sigaraSayisi = deger;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                        });
                      },
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.yellowAccent
                          : Colors.white,
                      child: GenderWidget(
                        ikon: FontAwesomeIcons.venus,
                        renk: Colors.pink,
                        cinsiyet: "KADIN",
                      )),
                ),
                Expanded(
                  child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Colors.yellowAccent
                          : Colors.white,
                      child: GenderWidget(
                        cinsiyet: "ERKEK",
                        renk: Colors.blue,
                        ikon: FontAwesomeIcons.mars,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Row buildRow(int boykilo, String yazi) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            yazi,
            style: metinStili,
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            yazi == "BOY" ? boy.toString() : kilo.toString(),
            style: sayiStili,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    yazi == "BOY" ? boy++ : kilo++;
                  });
                },
                child: Icon(FontAwesomeIcons.plus)),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    yazi == "BOY" ? boy-- : kilo--;
                  });
                },
                child: Icon(FontAwesomeIcons.minus))
          ],
        )
      ],
    );
  }
}

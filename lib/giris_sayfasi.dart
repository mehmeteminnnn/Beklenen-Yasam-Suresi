import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(),
                ),
                Expanded(
                  child: MyContainer(),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(),
          ),
          Expanded(
            child: MyContainer(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                      child: GenderWidget(
                    ikon: FontAwesomeIcons.venus,
                    renk: Colors.pink,
                    cinsiyet: "KADIN",
                  )),
                ),
                Expanded(
                  child: MyContainer(
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
}

class GenderWidget extends StatelessWidget {
  final String cinsiyet;
  final IconData? ikon;
  final Color? renk;
  GenderWidget({this.cinsiyet = "", this.ikon, this.renk});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ikon,
          size: 50,
          color: renk,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cinsiyet,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget? child;
  MyContainer({this.renk = Colors.white, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: renk,
        ));
  }
}

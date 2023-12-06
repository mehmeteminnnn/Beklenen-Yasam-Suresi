import 'package:flutter/material.dart';

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
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.lightBlue),
        )
      ],
    );
  }
}

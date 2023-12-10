import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/constants.dart';
import 'package:yasam_beklentisi/hesaplama.dart';
import 'package:yasam_beklentisi/user_data.dart';

class SonucSayfasi extends StatelessWidget {
  final UserData? userData;
  SonucSayfasi({this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        title: Text("SONUÇ SAYFASI"),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            flex: 8,
            child: Center(
              child: Text(
                "Beklenen Yaşam Süresi:${Hesaplama(userData!).hesaplaaa().round().toString()}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black87),
              ),
            )),
        Expanded(
            flex: 1,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white, shape: LinearBorder.end()),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "GERİ DÖN",
                  style: metinStili,
                )))
      ]),
    );
  }
}

import 'package:flutter/material.dart';

import './giris_sayfasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.lightBlue[300]),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:worm/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOrM - Aryak',
      // ignore: unnecessary_new
      theme: new ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 246, 1),
          fontFamily: 'Poppins'),
      home: const navbar(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => MyHomePage(),
      //   '/jadwal': (context) => jadwalPage(),
      // },
    );
  }
}

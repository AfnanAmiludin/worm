import 'package:flutter/material.dart';
import 'package:worm/page/myHomePage.dart';
import 'package:worm/page/jadwalPage.dart';
import 'package:worm/page/payment.dart';
import 'package:worm/page/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOrM - Aryak',
      theme: new ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(246, 246, 246, 1),
          fontFamily: 'Poppins'),
      home: const toHome(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => MyHomePage(),
      //   '/jadwal': (context) => jadwalPage(),
      // },
    );
  }
}

class toHome extends StatefulWidget {
  const toHome({Key? key}) : super(key: key);

  @override
  State<toHome> createState() => _toHomeState();
}

class _toHomeState extends State<toHome> {
  int currentIndex = 0;
  final screens = [
    const MyHomePage(),
    const jadwalPage(),
    const payment(),
    const profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(246, 246, 246, 1),
        selectedItemColor: Color.fromRGBO(254, 204, 118, 1),
        unselectedItemColor: Color.fromRGBO(121, 131, 146, 1),
        
        // selectedFontSize: 15,
        currentIndex: currentIndex,
        // showUnselectedLabels: false,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Jadwal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

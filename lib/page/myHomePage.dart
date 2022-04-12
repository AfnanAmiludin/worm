// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:worm/page/jadwalPage.dart';
import 'package:worm/page/payment.dart';
import 'package:worm/page/profile.dart';
import 'package:worm/widgets/navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int currentIndex = 0;
  // final screens = [
  //   const MyHomePage(),
  //   const jadwalPage(),
  //   const payment(),
  //   const profile(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WOrM"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            height: 119,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    image: AssetImage('assets/images/atas.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(right: 16, left: 16),
            height: 50,
            width: 400,
            color: Colors.white,
            alignment: Alignment.center,
            child: Text("Jadwal Kegiatan"),
          ),
          Container(
            margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
            height: 450,
            width: 400,
            color: Colors.white,
            child: ListView(
              children: const [
                ListTile(
                  title: Text("Progres 1"),
                  subtitle: Text(
                    "Progres sudah selesai",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text("10.00 PM"),
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  title: Text("Progres 2"),
                  subtitle: Text(
                    "Progres sudah selesai",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text("10.00 PM"),
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  title: Text("Progres 3"),
                  subtitle: Text(
                    "Progres sudah selesai",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text("10.00 PM"),
                ),
                Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.blue,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.amber,
      //   // selectedFontSize: 15,
      //   currentIndex: currentIndex,
      //   // showUnselectedLabels: false,
      //   onTap: (index) => setState(() => currentIndex = index),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.schedule),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.payment),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Home',
      //     ),
      //   ],
      // ),
    );
  }
}

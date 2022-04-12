import 'package:flutter/material.dart';
import 'package:worm/widgets/navbar.dart';

class jadwalPage extends StatefulWidget {
  const jadwalPage({Key? key}) : super(key: key);

  @override
  State<jadwalPage> createState() => _jadwalPageState();
}

class _jadwalPageState extends State<jadwalPage> {
  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text("WOrM"),
      ),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(16.0)),
        Container(
          margin: EdgeInsets.only(right: 16, left: 16),
          height: 50,
          width: 400,
          color: Color.fromRGBO(246, 246, 246, 1),
          alignment: Alignment.center,
          child: Text("Jadwal Kegiatan"),
        ),
        Container(
          margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
          height: 450,
          width: 400,
          color: Color.fromRGBO(246, 246, 246, 1),
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
      ]),
      // bottomNavigationBar: const navbar(),
    );
  }
}

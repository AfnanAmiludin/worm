import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WOrM"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            height: 119,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    image: AssetImage('images/atas.png'), fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            height: 450,
            width: 400,
            color: Colors.amber,
            child: ListView(
              children: const [
                ListTile(
                  title: Text("Proges 1"),
                  subtitle: Text(
                    "Proges sudah selesai",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text("10.00 PM"),
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  title: Text("Proges 2"),
                  subtitle: Text(
                    "Proges sudah selesai",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text("10.00 PM"),
                ),
                Divider(
                  color: Colors.black,
                ),
                ListTile(
                  title: Text("Proges 3"),
                  subtitle: Text(
                    "Proges sudah selesai",
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
    );
  }
}

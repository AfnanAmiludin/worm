import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 400,
            color: Colors.amber,
            // decoration: BoxDecoration(
            //     image: const DecorationImage(
            //   image: AssetImage('images/fix_profile.png'),
            // )),
          ),
        ],
      ),
    );
  }
}

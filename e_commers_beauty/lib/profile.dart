import 'dart:math';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final List<Container> myList = List.generate(20, (index) {
    return Container(
      width: 150,
      height: 50,
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
          children: myList,
        ),
      ),
    );
  }
}

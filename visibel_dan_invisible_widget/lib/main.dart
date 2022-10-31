import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column'),
        ),
        body: Stack(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.blueGrey,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.purple,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Color.fromARGB(255, 179, 147, 7),
            ),
          ],
        ),
      ),
    );
  }
}

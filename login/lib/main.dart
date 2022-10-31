import 'package:flutter/material.dart';
import 'package:intl/';

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
          title: Text("Date Time"),
        ),
        backgroundColor: Color(0xffdddddd),
        body: Center(
          child: Text(
            DateTime.now().toString(),
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

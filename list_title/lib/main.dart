import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Image"),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 500,
            color: Colors.amber,
            child: Image.network(
              "https://picsum.photos/id/1/200/300",
              fit: BoxFit.fill,
            ),
          ),
        ),
        // body: Image(
        //   fit: BoxFit.cover,
        //   image: NetworkImage("https://picsum.photos/id/237/200/300"),
        // ),
      ),
    );
  }
}

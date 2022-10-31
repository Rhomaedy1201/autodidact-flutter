import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.blue,
    Colors.red,
    Colors.purple,
    Colors.green
  ];

  final List<Widget> myList = [
    Container(
      width: 300,
      height: 300,
      color: Colors.blue,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.red,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.purple,
    ),
    Container(
      width: 300,
      height: 300,
      color: Colors.green,
    ),
  ];

  final List<Widget> myList2 = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(
        fontSize: 30 + double.parse(index.toString()),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        // body: ListView(
        //   // scrollDirection: Axis.horizontal,
        //   children: myList,
        // ),
        // body: ListView.separated(
        //   separatorBuilder: (context, index) {
        // return Container(
        //   height: 10,
        //   color: Colors.yellow,
        // );
        //   return Divider(
        //     color: Colors.black,
        //   );
        // },
        // itemCount: myColor.length,
        // itemBuilder: (context, index) {
        //   return Container(
        //     width: 300,
        //     height: 300,
        //     color: myColor[index],
        //   );
        // },
        body: ListView(
          children: myList2,
        ),
      ),
    );
  }
}

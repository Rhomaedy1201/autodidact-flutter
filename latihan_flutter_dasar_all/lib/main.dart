import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Rhomaedi",
      "Age": 19,
      "favColor": [
        "black",
        "blue",
        "red",
        "black",
        "blue",
        "red",
        "black",
        "blue",
        "red"
      ],
    },
    {
      "Name": "Randi",
      "Age": 20,
      "favColor": [
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red"
      ],
    },
    {
      "Name": "Malikk",
      "Age": 20,
      "favColor": [
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red"
      ],
    },
    {
      "Name": "Reyy",
      "Age": 20,
      "favColor": [
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red"
      ],
    },
    {
      "Name": "Reyy",
      "Age": 20,
      "favColor": [
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red"
      ],
    },
    {
      "Name": "Reyy",
      "Age": 20,
      "favColor": [
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red",
        "Yellow",
        "Purple",
        "red"
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID APPS"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data['favColor'];
            print(myFavColor);
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    // Row
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name : ${data['Name']}"),
                            Text("Age : ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myFavColor.map((color) {
                          return Container(
                            child: Text(color),
                            color: Colors.amber,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 10),
                            margin: EdgeInsets.all(10),
                          );
                        }).toList(),
                      ),
                    ),
                    // Column
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

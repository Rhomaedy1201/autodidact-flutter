import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              print("Dismised");
              if (direction == DismissDirection.endToStart) {
                print("End To Start");
              } else {
                print("Start To End");
              }
            },
            confirmDismiss: (direction) {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirm"),
                    content: Text(
                      "Are you sure to delete this project ?",
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text("No"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Yes"),
                      ),
                    ],
                  );
                },
              );
            },
            key: Key(index.toString()),
            // direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              child: Icon(
                Icons.delete,
                size: 30,
              ),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 15),
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}

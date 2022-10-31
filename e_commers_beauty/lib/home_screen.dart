import 'package:e_commers_beauty/home/body_home.dart';
import 'package:e_commers_beauty/profile.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Body_home(),
      Profile(),
    ];
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu_rounded,
          color: Colors.black54,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black54,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Confirm"),
                    content: Text("Aplikasi masih dalam proses perngembangan"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Yes"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("No"),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.category,
        ),
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.category_outlined, title: 'Category'),
          TabItem(icon: Icons.discount_outlined, title: 'Discounts'),
          TabItem(icon: Icons.shopping_bag_outlined, title: 'Cart'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
          // Navigator.push(context,
          //     CupertinoPageRoute(builder: (context) => widgets[currentIndex]));
        },
      ),
    );
  }
}

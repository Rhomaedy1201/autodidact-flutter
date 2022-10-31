import 'package:e_commers_beauty/home/category_home.dart';
import 'package:e_commers_beauty/home/home_and_living.dart';
import 'package:e_commers_beauty/home/search_body_home.dart';
import 'package:e_commers_beauty/home/slidebar_main_home.dart';
import 'package:flutter/material.dart';

class Body_home extends StatelessWidget {
  const Body_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: ListView(
        children: [
          Text(
            "Welcome Rhomaedy",
            style: TextStyle(fontSize: 23),
          ),
          Search_body_home(),
          Slidebar_main_home(),
          Category_home(),
          Home_and_living(),
        ],
      ),
    );
  }
}

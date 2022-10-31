import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Category_home extends StatelessWidget {
  const Category_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chose your Category",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextButton(
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                child: Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFACFFF4),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        margin: EdgeInsets.only(top: 8, bottom: 5),
                        child: Image.asset('images/category_1.png'),
                      ),
                      Text(
                        "Home & Living",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              InkWell(
                child: Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFE0AEFD),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        margin: EdgeInsets.only(top: 8, bottom: 5),
                        child: Image.asset('images/category_1.png'),
                      ),
                      Text(
                        "Home & Living",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              InkWell(
                child: Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFFFB476),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        margin: EdgeInsets.only(top: 8, bottom: 5),
                        child: Image.asset('images/category_1.png'),
                      ),
                      Text(
                        "Home & Living",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              InkWell(
                child: Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFC9FFDB),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        margin: EdgeInsets.only(top: 8, bottom: 5),
                        child: Image.asset('images/category_1.png'),
                      ),
                      Text(
                        "Home & Living",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

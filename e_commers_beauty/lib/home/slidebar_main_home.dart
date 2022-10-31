import 'package:flutter/material.dart';

class Slidebar_main_home extends StatelessWidget {
  const Slidebar_main_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(top: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 300,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFFFB476),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 15,
                    // bottom: 20,
                  ),
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore Freshness",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777777)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        "Freshly taken from the garden",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      SizedBox(
                        height: 30,
                        width: 80,
                        child: TextButton(
                          child: Text(
                            'Browse',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFFF9900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(
                    right: 15,
                    top: 10,
                  ),
                  child: Image.asset('images/logo.png'),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFACFFF4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 15,
                    // bottom: 20,
                  ),
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore Freshness",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777777)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        "Freshly taken from the garden",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      SizedBox(
                        height: 30,
                        width: 80,
                        child: TextButton(
                          child: Text(
                            'Browse',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFFF9900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(
                    right: 15,
                    top: 10,
                  ),
                  child: Image.asset('images/logo.png'),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFFDA9BFF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 15,
                    // bottom: 20,
                  ),
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore Freshness",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF777777)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        "Freshly taken from the garden",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      SizedBox(
                        height: 30,
                        width: 80,
                        child: TextButton(
                          child: Text(
                            'Browse',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFFF9900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(
                    right: 15,
                    top: 10,
                  ),
                  child: Image.asset('images/logo.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

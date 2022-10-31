import 'package:flutter/material.dart';

class Search_body_home extends StatelessWidget {
  const Search_body_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 50,
        child: TextField(
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: Icon(
              Icons.search,
              color: Colors.black54,
            ),
            hintStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

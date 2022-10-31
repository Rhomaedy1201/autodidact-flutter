import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:model/models/product.dart';

class HomePage extends StatelessWidget {
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(20, (index) {
      return Product(
          faker.food.restaurant(),
          'https://picsum.photos/id/$index/200',
          1000 + Random().nextInt(100000),
          faker.lorem.sentence());
    });
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Text("MarketPlace"),
        leading: Icon(Icons.back_hand_outlined),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4.2,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(dummyData[index].imageUrl),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        dummyData[index].judul,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Rp. ${dummyData[index].harga.toString()}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        dummyData[index].deskripsi,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 224, 224, 224),
                  blurRadius: 3,
                ),
              ],
            ),
          );
        },
        itemCount: dummyData.length,
      ),
    );
  }
}

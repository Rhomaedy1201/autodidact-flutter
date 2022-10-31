import 'package:flutter/material.dart';

class Home_and_living extends StatelessWidget {
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
                "Home & Living",
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
        Items_home_living(),
      ],
    );
  }
}

class Items_home_living extends StatelessWidget {
  const Items_home_living({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 22,
          runSpacing: 20,
          children: [
            Item_living_home(
              image: 'images/himalaya.jpg',
              title: "Himalaya",
              subtitle: "sabun cuci muka",
              mainPrice: "40.000",
              secondPrice: "50.000",
            ),
            Item_living_home(
              image: 'images/emina.png',
              title: "Emina",
              subtitle: "skincare emina",
              mainPrice: "70.000",
              secondPrice: "80.000",
            ),
            Item_living_home(
              image: 'images/garnier.jpg',
              title: "Garnier",
              subtitle: "Mecial cleansing",
              mainPrice: "35.000",
              secondPrice: "40.000",
            ),
            Item_living_home(
              image: 'images/msGlow.jpg',
              title: "Ms Glow",
              subtitle: "Full paket ms glow",
              mainPrice: "210.000",
              secondPrice: "229.000",
            ),
          ],
        ),
        Container(
          height: 5,
        ),
      ],
    );
  }
}

class Item_living_home extends StatelessWidget {
  const Item_living_home({
    Key? key,
    this.title,
    this.subtitle,
    this.image,
    this.mainPrice,
    this.secondPrice,
  }) : super(key: key);

  final String? title, subtitle, image, mainPrice, secondPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE6E6E6),
            blurRadius: 5,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 15,
          left: 17,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 130,
              height: 125,
              child: Image.asset('$image'),
            ),
            Container(
              width: 130,
              height: 70,
              margin: EdgeInsets.only(top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$subtitle",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Rp. $mainPrice",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    "Rp. $secondPrice",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

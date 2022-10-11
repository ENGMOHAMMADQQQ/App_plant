import 'package:flutter/material.dart';
import 'package:untitled5/Home/home.dart';
import 'package:untitled5/constants.dart';
import '../details/detailst.dart';

class container3 extends StatefulWidget {
  const container3({super.key});

  @override
  State<container3> createState() => _container3State();
}

class _container3State extends State<container3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        recommendplants(),
      ],
    );
  }
}

class recommendplants extends StatelessWidget {
  const recommendplants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 24,
          ),
          recommandplantcard(
            img: 'assets/images/image_1.png',
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyWidget()));
            },
            country: 'russia',
            price: 440,
            titel: 'samantha\n',
          ),
          SizedBox(
            width: 20,
          ),
          recommandplantcard(
            img: 'assets/images/image_2.png',
            press: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyWidget()));
            },
            country: 'russia',
            price: 440,
            titel: 'angelica\n',
          ),
          SizedBox(
            width: 20,
          ),
          recommandplantcard(
            img: 'assets/images/image_3.png',
            press: () {
            Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyWidget()));
            },
            country: 'russia',
            price: 440,
            titel: 'samantha\n',
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
  

}


class recommandplantcard extends StatelessWidget {
  const recommandplantcard({
    Key? key,
    required this.img,
    required this.titel,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);
  final String img, titel, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: Column(
        children: [
          Container(
            child: Image.asset(img),
          ),
          GestureDetector(
            onTap: press(),
            child: Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ],
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(15),
                  )),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '$titel'.toUpperCase(),
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

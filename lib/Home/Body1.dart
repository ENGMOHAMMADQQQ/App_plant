import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'Featuredplants.dart';
import 'HomePart2.dart';
import 'HomePart3.dart';
import 'homepartone.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          contenr1(),
          SizedBox(
            height: 25,
          ),
          Titilwithmorebtn(Title: 'Recomanded',Press: (){},),
          SizedBox(
            height: 10,
          ),
          container3(),
          SizedBox(
            height: 10,
          ),
            Titilwithmorebtn(Title: 'Featured Plants',Press: (){},),
          SizedBox(
            height: 10,
          ),
          FeaturedPlants()
        ],
      ),
    );
  }
}

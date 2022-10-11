import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/constants.dart';
import 'Featuredplants.dart';
import 'HomePart3.dart';
import 'bottomnavBar.dart';
import 'homepartone.dart';
import 'HomePart2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
            )),
      ),
      body: Body(),
      bottomNavigationBar: BottomnavBar(),
    );
  }
}


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

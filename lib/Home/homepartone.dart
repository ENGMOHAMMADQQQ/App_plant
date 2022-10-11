import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class contenr1 extends StatefulWidget {
  const contenr1({super.key});

  @override
  State<contenr1> createState() => _contenr1State();
}

class _contenr1State extends State<contenr1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      color: kBackgroundColor,
      child: Stack(children: [
        Container(
          padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: kDefaultPadding),
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(36))),
          child: Row(
            children: [
              Text(
                'Hi Uishopy!',
                style: TextStyle(
                    fontSize: 35,
                    color: kBackgroundColor,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(child: Image.asset('assets/images/logo.png'))
            ],
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 0,
          height: 45,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.5))
                  ]),
              child: Row(children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: kPrimaryColor, fontSize: 20)))),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: SvgPicture.asset('assets/icons/search.svg')),
              ])),
        )
      ]

          //

          ),
    );
  }
}

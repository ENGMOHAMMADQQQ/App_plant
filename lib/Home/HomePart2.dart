import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Titilwithmorebtn extends StatelessWidget {
  const Titilwithmorebtn({
    Key? key, required this.Title, required this.Press,
  }) : super(key: key);
  final String Title;
  final Function Press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    '$Title',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: 30,
                  right: 0,
                  bottom: 7,
                  child: Container(
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2),
                    width: 80,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 17),
            child: MaterialButton(
              onPressed: (){},
              child: Text(
                'More',
                style: TextStyle(
                    color: kBackgroundColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              color: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}

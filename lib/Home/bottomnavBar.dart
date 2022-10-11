import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomnavBar extends StatelessWidget {
  const BottomnavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding*2,
        right: kDefaultPadding*2,
        bottom: kDefaultPadding/2,
      ),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          offset: Offset(0, -10),
          color: kPrimaryColor.withOpacity(0.2),
          blurRadius: 35,
        )]
      ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween
      ,children: [
      IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/flower.svg')),
      IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
      IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/user-icon.svg'))

    ],),
    );
  }
}
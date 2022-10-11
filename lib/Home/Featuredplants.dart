import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 25,),
              Container(
                width: 275,
                height: 185,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: AssetImage('assets/images/bottom_img_1.png'))),
              ),
              SizedBox(width: 10,),
              Container(
                width: 275,
                height: 185,
                decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: AssetImage('assets/images/bottom_img_2.png'))),
              ),
              SizedBox(width: 120,),
            ],
          ),
          
        ),
      SizedBox(height: 25,),],
    );
  }
}

import 'package:flutter/material.dart';

class bodyy extends StatelessWidget {
  const bodyy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child:Column()),
            Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                
                image: DecorationImage(image: AssetImage('assets/images/img_main.png'))
              ),
            )
          ],
        )
      ],
    );
  }
}

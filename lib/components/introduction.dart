import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Introduction extends StatelessWidget {
  const Introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 350),
      color: kPrimaryColor,
      child: Column(
        children: [
          Text(
            'Hi, I’m Matt. Nice to meet you.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Since beginning my journey as a freelance designer nearly 10 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chops one design problem at a time.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
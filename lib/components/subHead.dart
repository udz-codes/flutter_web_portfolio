import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class SubHead extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Front-end Engineer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: kPrimaryAccentColor
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'I design 🎨. I code 🤖. I am groot 🌱.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 70,),
          Container(
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage('https://avatars.githubusercontent.com/u/21984964?s=400&u=0b2c72842f721461ccd86326c11e26e9d1b361ab&v=4'))
            ),
            // child: Image.network('https://avatars.githubusercontent.com/u/21984964?s=400&u=0b2c72842f721461ccd86326c11e26e9d1b361ab&v=4')
          ),
          SizedBox(height: 70,),
          Container(
            height: 200,
            child: Image.network('https://i.imgur.com/aLFuXSN.png')
          ),
        ],
      ),
    );
  }
}
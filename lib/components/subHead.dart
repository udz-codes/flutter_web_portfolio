import 'package:flutter/material.dart';

class SubHead extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Text(
            'Designer, Front-end Developer & Mentor',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'I design and code beautifully simple things, and I love what I do.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 70,),
          Image.network('https://mattfarley.ca/img/mf-avatar.svg'),
          SizedBox(height: 70,),
          Image.network('https://mattfarley.ca/img/hero.svg'),
        ],
      ),
    );
  }
}
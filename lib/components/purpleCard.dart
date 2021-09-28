import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class PurpleCard extends StatelessWidget {

  final String heading;
  final String text;

  const PurpleCard({
    required this.heading,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
      color: kPrimaryColor,
      child: Column(
        children: [
          Text(
            heading,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          SizedBox(height: 20,),
          Text(
            text,
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
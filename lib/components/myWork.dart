import 'package:flutter/material.dart';
import 'projectsArea.dart';
import 'package:portfolio/constants.dart';

class MyWork extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 70),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Text(
                'My Recent Work',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Here are a few design projects I've worked on recently. Want to see more? Email me.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        ProjectsArea(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 70),
          child: TextButton(
            onPressed: (){},
            child: Text(
              'See more on Dribble',
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 30),
              textStyle: TextStyle(fontSize: 22),
              primary: kPrimaryColor,
              onSurface: kPrimaryColor,
              side: BorderSide(color: kPrimaryColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )
            ),
          ),
        ),
      ],
    );
  }
}
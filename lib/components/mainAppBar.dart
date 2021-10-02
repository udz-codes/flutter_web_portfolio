import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MainAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 1200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image.network("https://mattfarley.ca/img/mf-logo.svg")
          ),
          Row(
            children: [
              Text(
                'Mentorship',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300
                ),
              ),
              SizedBox(width: 20,),
              TextButton(
                onPressed: (){},
                child: Text(
                  'Say Hello',
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                  textStyle: TextStyle(fontSize: 16),
                  primary: kPrimaryColor,
                  onSurface: kPrimaryColor,
                  side: BorderSide(color: kPrimaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
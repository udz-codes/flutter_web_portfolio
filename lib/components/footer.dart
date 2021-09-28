import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 70),
      color: kPrimaryColor,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Image.network('https://mattfarley.ca/img/mf-logo-white.svg'),
          ),
          SizedBox(height: 20,),
          Text(
            'Living, learning, & leveling up\none day at a time.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w300,
              color: Colors.white
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.twitter, color: Colors.white, size: 16),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: BorderSide(color: Colors.white),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(18),
                  primary: kPrimaryColor,
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.dribbble, color: Colors.white, size: 16),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: BorderSide(color: Colors.white),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(18),
                  primary: kPrimaryColor,
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white, size: 16),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: BorderSide(color: Colors.white),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(18),
                  primary: kPrimaryColor,
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.angellist, color: Colors.white, size: 16),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: BorderSide(color: Colors.white),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(18),
                  primary: kPrimaryColor,
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.productHunt, color: Colors.white, size: 16),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: BorderSide(color: Colors.white),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(18),
                  primary: kPrimaryColor,
                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {},
                child: FaIcon(FontAwesomeIcons.envelope, color: Colors.white, size: 16,),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  side: BorderSide(color: Colors.white),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(18),
                  primary: kPrimaryColor,
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 50,),
          Text(
            'Handcrafted by me © udz',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Made with',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                height: 30,
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png')
              ),
              SizedBox(width: 10,),
            ],
          )
        ],
      ),
    );
  }
}
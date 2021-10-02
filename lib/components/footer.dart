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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Living, learning, & leveling up\none day at a time.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w300,
                color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 50,),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              LogoButton(logo: FontAwesomeIcons.twitter),
              LogoButton(logo: FontAwesomeIcons.dribbble),
              LogoButton(logo: FontAwesomeIcons.linkedin),
              LogoButton(logo: FontAwesomeIcons.angellist),
              LogoButton(logo: FontAwesomeIcons.productHunt),
              LogoButton(logo: FontAwesomeIcons.envelope),
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

class LogoButton extends StatelessWidget {

  final IconData logo;

  const LogoButton({
    required this.logo
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {},
        child: FaIcon(logo, color: Colors.white, size: 16,),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          side: BorderSide(color: Colors.white),
          shape: CircleBorder(),
          padding: EdgeInsets.all(18),
          primary: kPrimaryColor,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Collaborations extends StatelessWidget {
  const Collaborations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 70),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 70),
            child: Text(
              "I'm proud to have collaborated with some awesome companies:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: 1200,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/briteweb.svg'),
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/goodkind.svg'),
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/redstamp.svg'),
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/domain7.svg'),
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/designlab.png'),
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/chronicled.svg'),
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/bldrs.png'),
                LogoImages(imageUrl: 'https://mattfarley.ca/img/logos/serpmetrics.svg'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LogoImages extends StatelessWidget {
  final String imageUrl;
  
  const LogoImages({
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: SizedBox(
        width: 250,
        child: Image.network(imageUrl)
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class StartupsArea extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Container(color: kPrimaryColor, height: 150, width: double.infinity,),
            Container(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  StartupTile(
                    imageUrl: 'https://mattfarley.ca/img/logos/kybercore.svg',
                    bodyText: 'Next level plug and play chassis systems for custom do-it-yourself lightsaber builds.',
                    link: '',
                    linkTitle: 'In development',
                  ),
                  StartupTile(
                    imageUrl: 'https://mattfarley.ca/img/logos/houston.svg',
                    bodyText: 'Simple feedback and engagement tools for teams that want to build and ship winning products.',
                    link: '',
                    linkTitle: 'In development',
                  ),
                  StartupTile(
                    imageUrl: 'https://mattfarley.ca/img/logos/basin.svg',
                    bodyText: 'A powerful, easy-to-configure form backend for designers and developers. No coding required.',
                    link: 'https://www.usebasin.com/',
                    linkTitle: 'www.usebasin.com',
                  ),
                  StartupTile(
                    imageUrl: 'https://mattfarley.ca/img/logos/ylbuilders.svg',
                    bodyText: 'Beautifully simple websites for independent distributors of Young Living Essential Oils.',
                    link: 'https://ylbuilders.com',
                    linkTitle: 'www.ylbuilders.com',
                  ),
                  StartupTile(
                    imageUrl: 'https://mattfarley.ca/img/logos/userforge.svg',
                    bodyText: 'A collaborative tool for creating simple, effective user personas for design projects.',
                    link: 'https://www.userforge.com/',
                    linkTitle: 'www.userforge.com',
                  ),
                  StartupTile(
                    imageUrl: 'https://mattfarley.ca/img/logos/dovetail.svg',
                    bodyText: 'A space and member management solution for coworking communities both big and small.',
                    link: '',
                    linkTitle: 'Shutdown in 2017',
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Column(
            children: [
              Text(
                'Interested in collaborating or investing?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 20,),
              Text(
                'I’m always open to discussing product design work or partnership opportunities.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18
                ),  
              ),
              SizedBox(height: 70,),
              Container(
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
          ),
        )
      ],
    );
  }
}

class StartupTile extends StatelessWidget {
  final String imageUrl;
  final String bodyText;
  final String linkTitle;
  final String link;
  
  const StartupTile({
    required this.imageUrl,
    required this.bodyText,
    required this.linkTitle,
    required this.link
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 400,
      margin: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50,
                child: Image.network(imageUrl)
              ),
              Text(bodyText,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              Text(linkTitle,
                style: TextStyle(
                  fontSize: 18,
                  color: kPrimaryColor
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class SkillCardArea extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(color: kPrimaryColor, height: 150, width: double.infinity,),
        Container(
          width: 1220,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.spaceEvenly,
              children: [
                SkillCard(
                  imageUrl: 'https://mattfarley.ca/img/icons/designer.svg',
                  mainHeading: 'Designer',
                  mainBody: 'I value simple content structure, clean design patterns, and thoughtful interactions.',
                  subHeading1: 'Things I enjoy designing:',
                  subBody1: 'UX, UI, Web, Mobile, Apps, Logos',
                  subHeading2: 'Design Tools:',
                  subBody2: "Balsamiq Mockups\nFigma\nInvision\nMarvel\nPen & Paper\nSketch\nWebflow\nZeplin",
                ),
                // VerticalDivider(
                //   color: Colors.grey[300],
                //   thickness: 1,
                // ),
                SkillCard(
                  imageUrl: 'https://mattfarley.ca/img/icons/frontend.svg',
                  mainHeading: 'Front-end Developer',
                  mainBody: 'I like to code things from scratch, and enjoy bringing ideas to life in the browser.',
                  subHeading1: 'Languages I speak:',
                  subBody1: 'HTML, Pug, Slim, CSS, Sass, Less',
                  subHeading2: 'Dev Tools:',
                  subBody2: "Atom\nBitbucket\nBootstrap\nBulma\nCodekit\nCodepen\nGithub\nGitlab\nTerminal",
                ),
                // VerticalDivider(
                //   color: Colors.grey[300],
                //   thickness: 1,
                // ),
                SkillCard(
                  imageUrl: 'https://mattfarley.ca/img/icons/mentor.svg',
                  mainHeading: 'Mentor',
                  mainBody: 'I genuinely care about people, and love helping fellow designers work on their craft.',
                  subHeading1: 'Experiences I draw from:',
                  subBody1: 'UX/UI, Product design, Freelancing',
                  subHeading2: 'Mentor Stats:',
                  subBody2: "5 years experience\n26 short courses\n42 bootcamps\n125+ students\n1,400+ mentor sessions\n60+ group critiques\n12,000+ comments",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


class SkillCard extends StatelessWidget {
  final String imageUrl;
  final String mainHeading;
  final String mainBody;
  final String subHeading1;
  final String subBody1;
  final String subHeading2;
  final String subBody2;
  
  const SkillCard({
    required this.imageUrl,
    required this.mainHeading,
    required this.mainBody,
    required this.subHeading1,
    required this.subBody1,
    required this.subHeading2,
    required this.subBody2
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              child: Image.network(imageUrl)
            ),
            Text(
              mainHeading,
              textAlign: TextAlign.center,
              style: kCardHeadingStyle
            ),
            SizedBox(height: 15,),
            Text(
              mainBody,
              textAlign: TextAlign.center,
              style: kCardTextStyle
            ),
            SizedBox(height: 50,),
            Text(
              subHeading1,
              textAlign: TextAlign.center,
              style: kCardSubHeadingStyle
            ),
            SizedBox(height: 15,),
            Text(
              subBody1,
              textAlign: TextAlign.center,
              style: kCardTextStyle
            ),
            SizedBox(height: 50,),
            Text(
              subHeading2,
              textAlign: TextAlign.center,
              style: kCardSubHeadingStyle  
            ),
            SizedBox(height: 15,),
            Text(
              subBody2,
              textAlign: TextAlign.center,
              style: kCardTextStyle  
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'components/mainAppBar.dart';
import 'components/subHead.dart';
import 'components/purpleCard.dart';
import 'components/skillCardArea.dart';
import 'components/myWork.dart';
import 'components/collaborations.dart';
import 'components/starupsArea.dart';
import 'components/testimonials.dart';
import 'components/startProject.dart';
import 'components/footer.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainAppBar(),
            SubHead(),
            PurpleCard(
              heading: 'Hi, I’m Matt. Nice to meet you.',
              text: "Since beginning my journey as a freelance designer nearly 10 years ago, I've done remote work for agencies, consulted for startups, and collaborated with talented people to create digital products for both business and consumer use. I'm quietly confident, naturally curious, and perpetually working on improving my chops one design problem at a time.",
            ),
            SkillCardArea(),
            MyWork(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Collaborations(),
            PurpleCard(
              heading: 'My Startup Projects',
              text: "I'm a bit of a digital product junky. Over the years, I've used hundreds of web and mobile apps in different industries and verticals. Eventually, I decided that it would be a fun challenge to try designing and building my own.",
            ),
            StartupsArea(),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            Testimonials(),
            StartProject(),
            Footer(),
          ],
        ),
      )
    );
  }
}
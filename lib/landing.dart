import 'package:flutter/material.dart';
import 'constants.dart';
import 'components/mainAppBar.dart';
import 'components/subHead.dart';
import 'components/introduction.dart';
import 'components/skillCardArea.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainAppBar(),
            SubHead(),
            Introduction(),
            SkillCardArea()
          ],
        ),
      )
    );
  }
}
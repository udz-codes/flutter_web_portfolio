import 'package:flutter/material.dart';

class ProjectsArea extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          ProjectTile(
            backgroudUrl: 'https://mattfarley.ca/img/projects/wfdesignbuild.png',
          ),
          ProjectTile(
            backgroudUrl: 'https://mattfarley.ca/img/projects/awg2020.png',
          ),
          ProjectTile(
            backgroudUrl: 'https://mattfarley.ca/img/projects/chronicled.png',
          ),
          ProjectTile(
            backgroudUrl: 'https://mattfarley.ca/img/projects/glcsolutions.png',
          ),
          ProjectTile(
            backgroudUrl: 'https://mattfarley.ca/img/projects/coupal.png',
          ),
          ProjectTile(
            backgroudUrl: 'https://mattfarley.ca/img/projects/wedlerengineering.png',
          ),
        ],
      ),
    );
  }
}

class ProjectTile extends StatelessWidget {
  final String backgroudUrl;
  
  const ProjectTile({
    required this.backgroudUrl
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 380,
      margin: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        image: DecorationImage(
          image: NetworkImage(backgroudUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
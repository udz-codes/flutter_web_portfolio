import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          Text(
            "Testimonials",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "People I've worked with have said some nice things...",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 70,),
          TestimonialCards()
        ],
      ),
    );
  }
}

class TestimonialCards extends StatefulWidget {

  @override
  _TestimonialCardsState createState() => _TestimonialCardsState();
}

class _TestimonialCardsState extends State<TestimonialCards> {
  final PageController pageController = PageController(
    initialPage: 0
  );

  int currentPage = 0;

  void changePage(index) {
    setState(() {
      currentPage = index;
    });
    pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: 800,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: PageView(
            controller: pageController,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage("https://mattfarley.ca/img/avatars/pascal.png")
                        )
                      )
                    ),
                    Text(
                      '“Matt was a real pleasure to work with and we look forward to working with him again. He’s definitely the kind of designer you can trust with a project from start to finish.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24
                      ),  
                    ),
                    Column(
                      children: [
                        Text(
                          'Pascal Tremblay',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Creative Lead, Good Kind',
                          style: TextStyle(
                            fontSize: 18,
                          ),  
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage("https://mattfarley.ca/img/avatars/alvin.png")
                        )
                      )
                    ),
                    Text(
                      "“Matt's a clear communicator with the tenacity and confidence to really dig in to tricky design scenarios and the collaborative friction that's needed to produce excellent work.”",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24
                      ),  
                    ),
                    Column(
                      children: [
                        Text(
                          'Alvin Engler',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Sr. Systems Developer, Domain7',
                          style: TextStyle(
                            fontSize: 18,
                          ),  
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => changePage(0),
              child: Container(),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(25,25),),
                shape: MaterialStateProperty.all(CircleBorder()),
                backgroundColor: currentPage == 0 ? MaterialStateProperty.all(kPrimaryColor) : MaterialStateProperty.all(Colors.grey[300])
              ),
            ),
            SizedBox(width: 20,),
            ElevatedButton(
              onPressed: () => changePage(1),
              child: Container(),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(25,25),),
                shape: MaterialStateProperty.all(CircleBorder()),
                backgroundColor: currentPage == 1 ? MaterialStateProperty.all(kPrimaryColor) : MaterialStateProperty.all(Colors.grey[300])
              ),
            ),
          ],
        )
      ],
    );
  }
}
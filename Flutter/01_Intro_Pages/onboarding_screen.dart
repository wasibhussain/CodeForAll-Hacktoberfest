// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables ,prefer_final_fields, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_01/01_Intro_Pages/home_page_1.dart';
import 'package:flutter_application_01/01_Intro_Pages/intro_page_1.dart';
import 'package:flutter_application_01/01_Intro_Pages/intro_page_2.dart';
import 'package:flutter_application_01/01_Intro_Pages/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardibgScreen extends StatefulWidget {
  const OnBoardibgScreen({super.key});

  @override
  State<OnBoardibgScreen> createState() => _OnBoardibgScreenState();
}

class _OnBoardibgScreenState extends State<OnBoardibgScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,

          // top change next button to done
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            // skip
            GestureDetector(
              child: Text('skip'),
              onTap: () {
                _controller.jumpToPage(2);
              },
            ),

            // dot indicator
            SmoothPageIndicator(controller: _controller, count: 3),

            // next or done
            onLastPage
                ? GestureDetector(
                    child: Text('done'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return HomePage1();
                        },
                      ));
                    },
                  )
                : GestureDetector(
                    child: Text('next'),
                    onTap: () {
                      _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn);
                    },
                  )
          ]),
        ),
      ]),
    );
  }
}

import 'dart:developer';
import 'package:flutter/material.dart';

import 'package:untitled1/Screens/Splash/components/splash_content.dart';
import 'package:untitled1/constants.dart';
import 'package:untitled1/size_config.dart';

import '../../../components/default_button.dart';
import '../../Sign_in/sign_in_screen.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List <Map< String, String >> SplashData =
  [
  { "text":"well,hello there",
    "image":"assets/images/10808.png",
  }
];

  get currentPage => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:SizedBox(
        width:  double.infinity,
        child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder
              ( itemCount: SplashData.length,
                itemBuilder: (context,index)=>SplashContent(
                  image: SplashData[index]["image"]!,
                  text:  SplashData[index]['text']!,
                  icon: "assets/icons/6476193.svg",


            ),

          ),

          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      SplashData.length,
                          (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(flex: 3),
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
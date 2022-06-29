import 'package:flutter/material.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.icon,
    required this.image,
  }) : super(key: key);
  final String text, icon,image;

  get kprimarycolor => null;

  get SvgPicture => null;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(flex: 5),
        Text("Welcome!",
          style: TextStyle(fontSize:getProportionateScreenWidth(50),
              color: kprimarycolor,
              fontWeight: FontWeight.bold),

        ),

        Spacer(flex:2),
        SvgPicture.asset( 
          icon
          ,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],

    );
  }
}




import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack (
        alignment: Alignment.center,
        children: <Widget> [
          Positioned(
            top: -50,
            left: -40,
            child:Image.asset("assets/images/main_top.png",
              width: size.width * 0.8,
            ),
          ),
          Positioned(
            bottom:-30,
            left:-10,
            child: Image.asset("assets/images/main_bottom.png",
              width: size.width * 0.4,
            ),
          ),
          child,
        ],
      ),
    );
  }
}

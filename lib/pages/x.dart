import 'package:flutter/material.dart';


class MyTheme {
  static Color orange = Color(0xfff58714);
  static Color red = Colors.redAccent;
  static Color green = Color(0xff88e339);
}

class X extends StatelessWidget {
  double size;
  double height;

  X(this.size, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: size / 2 - height / 2,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(-45 / 360),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.8],
                    colors: [
                      MyTheme.red,
                      MyTheme.red,
                    ],
                  ),
                ),
                height: height,
                width: size,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: size / 2 - height / 2,
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(45 / 360),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.8],
                    colors: [
                      MyTheme.red,
                      MyTheme.red,
                    ],
                  ),
                ),
                height: height,
                width: size,
              ),
            ),
          )
        ],
      ),
    );
  }
}

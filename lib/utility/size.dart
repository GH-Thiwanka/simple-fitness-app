import 'package:flutter/material.dart';

const double Kdefaltpadding = 10;

class KSize {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

class KdefaultTextStyle extends StatelessWidget {
  final String text;
  final double fontSize;
  const KdefaultTextStyle({
    super.key,
    required this.text,
    this.fontSize = kDefaultFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Alatsi',
        fontSize: fontSize,
        color: Colors.white,
      ),
    );
  }
}

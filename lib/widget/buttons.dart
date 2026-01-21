import 'package:fitness/widget/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class StartTrainingButton extends StatelessWidget {
  const StartTrainingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(color: kDarkRed, thickness: 5, endIndent: 50),
        Row(
          children: [
            Flexible(
              child: SmallButton(
                text: 'Start Training',
                height: 40,
                fontSize: 15,
                iswidth: false,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: kDarkRed,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.play_circle_fill_rounded,
                color: KWhite,
                size: 23,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SmallButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color color;
  final double fontSize;
  final bool iswidth;
  const SmallButton({
    super.key,
    this.height = 30,
    this.width = 90,
    required this.text,
    this.color = const Color(0xFFB22222),
    this.fontSize = 10,
    this.iswidth = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: iswidth ? width : null,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: KWhite,
            fontSize: fontSize,
            fontFamily: 'Alatsi',
          ),
        ),
      ),
    );
  }
}

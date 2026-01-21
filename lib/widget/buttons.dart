import 'package:fitness/widget/colors.dart';
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
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: kDarkRed,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Start Training',
                    style: TextStyle(
                      color: KWhite,
                      fontSize: 15,
                      fontFamily: 'Alatsi',
                    ),
                  ),
                ),
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

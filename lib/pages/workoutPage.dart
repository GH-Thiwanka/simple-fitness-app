import 'package:fitness/widget/buttons.dart';
import 'package:fitness/utility/colors.dart';
import 'package:fitness/widget/containerWidget.dart';
import 'package:fitness/utility/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Workoutpage extends StatelessWidget {
  const Workoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/lift.png',
                  height: 350,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: kDefaultFontSize,
                    top: kDefaultFontSize * 4,
                    bottom: kDefaultFontSize,
                  ),
                  child: SizedBox(
                    height: 270,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: KBlack,
                          onTap: () {
                            context.go('/home');
                          },
                          child: Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                        KdefaultTextStyle(
                          text: 'Full Body Workout',
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(kDefaultFontSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmallButton(text: 'Cardio', color: KlightRed),
                        SmallButton(text: 'Boxing', color: KlightRed),
                        SmallButton(text: 'Zumba', color: KlightRed),
                        SmallButton(text: 'Hiking', color: KlightRed),
                      ],
                    ),
                  ),
                  const SizedBox(height: kDefaultFontSize),
                  StartTrainingButton(),
                  const SizedBox(height: kDefaultFontSize),
                  Round01(),
                  SizedBox(height: KSize.getHeight(context) * 0.01),
                  Round01(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

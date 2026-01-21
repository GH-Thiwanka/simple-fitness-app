import 'package:fitness/widget/buttons.dart';
import 'package:fitness/widget/colors.dart';
import 'package:fitness/widget/size.dart';
import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    'assets/images/splimg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Join the Fitness \nClub',
                  style: TextStyle(
                    fontFamily: 'Alatsi',
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: Kdefaltpadding),

                StartTrainingButton(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

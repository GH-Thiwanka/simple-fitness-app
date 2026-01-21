import 'dart:async';

import 'package:fitness/widget/buttons.dart';
import 'package:fitness/widget/colors.dart';
import 'package:fitness/widget/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      context.go('/home');
    });
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

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
                KdefaultTextStyle(
                  text: 'Join the Fitness \nClub',
                  fontSize: 32,
                ),
                SizedBox(height: Kdefaltpadding),

                StartTrainingButton(),
                SizedBox(height: KSize.getHeight(context) * 0.05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

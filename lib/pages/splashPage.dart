import 'dart:async';

import 'package:fitness/widget/buttons.dart';
import 'package:fitness/utility/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  // Define the image provider once to ensure consistency
  late ImageProvider _splashImage;

  @override
  void initState() {
    super.initState();
    _splashImage = const AssetImage('assets/images/splimg.webp');

    // Timer remains here
    Timer(const Duration(milliseconds: 3000), () {
      context.go('/home');
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // precacheImage is called here where context is fully ready
    precacheImage(_splashImage, context);
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
                  child: Hero(
                    tag: 'hero-image',
                    child: Image.asset(
                      'assets/images/splimg.webp',

                      fit: BoxFit.cover,
                    ),
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
                const SizedBox(height: Kdefaltpadding),

                const StartTrainingButton(),
                SizedBox(height: KSize.getHeight(context) * 0.05),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

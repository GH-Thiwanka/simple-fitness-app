import 'package:fitness/widget/colors.dart';
import 'package:fitness/widget/containerWidget.dart';
import 'package:fitness/widget/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Workoutpage extends StatelessWidget {
  const Workoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultFontSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  splashColor: KBlack,
                  onTap: () {
                    context.go('/home');
                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                ),
                Round01(),
                SizedBox(height: KSize.getHeight(context) * 0.01),
                Round01(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

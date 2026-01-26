import 'package:fitness/widget/buttons.dart';
import 'package:fitness/utility/colors.dart';
import 'package:fitness/widget/containerWidget.dart';
import 'package:fitness/utility/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboardpage extends StatefulWidget {
  const Dashboardpage({super.key});

  @override
  State<Dashboardpage> createState() => _DashboardpageState();
}

class _DashboardpageState extends State<Dashboardpage> {
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: KSize.getHeight(context) * 0.05),
                KdefaultTextStyle(
                  text: "Hello Jenna,\nLet's start exercising",
                  fontSize: 20,
                ),
                SizedBox(height: KSize.getHeight(context) * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        InkWell(
                          splashColor: KWhite,
                          onTap: () {
                            context.go('/workout');
                          },
                          child: Containerwidget(
                            imgPath: 'assets/images/cycling.png',
                            imgHight: KSize.getHeight(context) * 0.21,
                            imgWidth: KSize.getWidth(context) * 0.45,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SmallButton(text: 'Start'),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Containerwidget(
                          imgPath: 'assets/images/pushup.png',
                          imgHight: KSize.getHeight(context) * 0.21,
                          imgWidth: KSize.getWidth(context) * 0.45,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SmallButton(
                            text: 'Start',
                            color: Color(0xffF06666),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: KSize.getHeight(context) * 0.03),
                KdefaultTextStyle(text: 'Recomended for you', fontSize: 16),
                SizedBox(height: KSize.getHeight(context) * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Containerwidget(
                      imgPath: 'assets/images/yoga.png',
                      imgHight: KSize.getHeight(context) * 0.11,
                      imgWidth: KSize.getWidth(context) * 0.30,
                    ),
                    Containerwidget(
                      imgPath: 'assets/images/run.png',
                      imgHight: KSize.getHeight(context) * 0.11,
                      imgWidth: KSize.getWidth(context) * 0.30,
                    ),
                    Containerwidget(
                      imgPath: 'assets/images/strech.png',
                      imgHight: KSize.getHeight(context) * 0.11,
                      imgWidth: KSize.getWidth(context) * 0.30,
                    ),
                  ],
                ),
                SizedBox(height: KSize.getHeight(context) * 0.05),
                Opacitycard(
                  imgPath: 'assets/images/medit.png',
                  title: 'Find me a personal Trainer',
                  discription: 'Explore now',
                ),
                SizedBox(height: KSize.getHeight(context) * 0.02),
                Opacitycard(
                  imgPath: 'assets/images/dance.png',
                  title: 'Find me group classes',
                  discription: 'Explore now',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

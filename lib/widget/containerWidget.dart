import 'package:fitness/widget/size.dart';
import 'package:flutter/material.dart';

class Containerwidget extends StatelessWidget {
  final String imgPath;
  final double imgHight;
  final double imgWidth;
  final bool isOpacity;
  const Containerwidget({
    super.key,
    required this.imgPath,
    this.imgHight = 165,
    this.imgWidth = 160,
    this.isOpacity = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgHight,
      width: imgWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Kdefaltpadding),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
          colorFilter: isOpacity
              ? ColorFilter.mode(
                  Colors.black.withOpacity(0.4),
                  BlendMode.darken,
                )
              : null,
        ),
      ),
    );
  }
}

class Opacitycard extends StatelessWidget {
  final String imgPath;
  final String title;
  final String discription;
  const Opacitycard({
    super.key,
    required this.imgPath,
    required this.title,
    required this.discription,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Containerwidget(
          imgPath: imgPath,
          imgHight: KSize.getHeight(context) * 0.17,
          imgWidth: double.infinity,
          isOpacity: true,
        ),
        SizedBox(
          height: KSize.getHeight(context) * 0.17,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              KdefaultTextStyle(text: title, fontSize: 16),
              SizedBox(height: KSize.getHeight(context) * 0.02),
              Text(
                discription,
                style: TextStyle(
                  fontFamily: 'Alatsi',
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

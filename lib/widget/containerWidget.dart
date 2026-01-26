import 'package:fitness/utility/colors.dart';
import 'package:fitness/utility/size.dart';
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
    ); /* ClipRRect(
      borderRadius: BorderRadius.circular(Kdefaltpadding),

      child: Expanded(
        child: Image.asset(
          imgPath,
          cacheHeight: imgHight.toInt(),
          cacheWidth: imgHight.toInt(),
          fit: BoxFit.fitWidth,
          color: isOpacity ? Colors.black.withOpacity(0.5) : null,
          colorBlendMode: isOpacity ? BlendMode.darken : null,
        ),
      ),
    );*/
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

class Round01 extends StatelessWidget {
  const Round01({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
          width: double.infinity,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: KWhite,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(kDefaultFontSize * 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Round 01',
                style: TextStyle(
                  fontSize: 16,
                  color: KBlack,
                  fontFamily: 'Alatsi',
                ),
              ),
              SizedBox(height: KSize.getHeight(context) * 0.03),
              Round01Stack(),
              Round01Stack(),
            ],
          ),
        ),
      ],
    );
  }
}

class Round01Stack extends StatelessWidget {
  const Round01Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: kDefaultFontSize,
        bottom: kDefaultFontSize * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: kDefaultFontSize * 3),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kDefaultFontSize),
                  child: Image.asset(
                    'assets/images/run2.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Side Stretch Left',
                    style: TextStyle(
                      fontSize: 10,
                      color: KBlack,
                      fontFamily: 'Alatsi',
                    ),
                  ),
                  Text(
                    '3x',
                    style: TextStyle(
                      fontSize: 16,
                      color: KBlack.withOpacity(0.5),
                      fontFamily: 'Alatsi',
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_fill_rounded,
              color: KlightRed,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}

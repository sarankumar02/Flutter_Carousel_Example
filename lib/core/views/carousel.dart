import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
//Carousel widget to show the carousel of images..
//Generally carousel is the set of items

class CarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Carousel(
      borderRadius: true,
      boxFit: BoxFit.fill,
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 100),
      dotSize: 5.0,
      dotIncreasedColor: Color(0xFFFF335C),
      dotBgColor: Colors.black12,
      dotPosition: DotPosition.bottomCenter,
      dotVerticalPadding: -4.0,
      showIndicator: true,
      indicatorBgPadding: 3.0,
      images: [
        ExactAssetImage("assets/images/slider1.jpg"),
        ExactAssetImage("assets/images/slider2.jpg"),
        ExactAssetImage("assets/images/slider3.jpg"),
        ExactAssetImage("assets/images/slider4.jpg"),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int current;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            height: 100,
            // viewportFraction: 1,
            items: <Widget>[
              Container(
                height: 100,
                width: double.infinity,
                child: Image.asset('assets/images/image_1.jpg',fit: BoxFit.cover,),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Image.asset('assets/images/image_2.jpg',fit: BoxFit.cover,),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Image.asset('assets/images/image_3.png',fit: BoxFit.cover,),
              )
            ],
            onPageChanged: (index) {
              current = index;
            },
          )
        ],
      ),
    );
  }
}

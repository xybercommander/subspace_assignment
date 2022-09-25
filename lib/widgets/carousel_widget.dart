import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          margin: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Netflix_banner.png"),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/prime-video.png"),
              fit: BoxFit.cover
            )
          ),
        ),
        Container(
          margin: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/disney-plus-banner.jpg"),
              fit: BoxFit.cover
            )
          ),
        ),
      ], 
      options: CarouselOptions(
        height: 160,                  
        // aspectRatio: 16/9,
        disableCenter: true,
        viewportFraction: 1,        
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,        
        autoPlayInterval: Duration(seconds: 7),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,                  
        scrollDirection: Axis.horizontal,
      )
    );
  }
}
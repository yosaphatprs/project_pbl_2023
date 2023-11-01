import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselHeaderWidget extends StatelessWidget {
  const CarouselHeaderWidget({
    super.key,
    required this.iklanCarousel,
  });

  final List<String> iklanCarousel;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 125.0,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 700),
        pauseAutoPlayOnTouch: true,
      ),
      items: iklanCarousel.map((i) {
        return Image.asset(
          i,
          fit: BoxFit.fill,
          width: 300,
          height: 300,
        );
      }).toList(),
    );
  }
}

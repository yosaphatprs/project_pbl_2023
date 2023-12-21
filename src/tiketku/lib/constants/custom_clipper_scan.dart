import 'package:flutter/material.dart';

class NIKClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    final rectWidth = 150.0;
    final rectHeight = 20.0;

    final left = 75.0;
    final top = 20.0;

    path.addRect(Rect.fromLTWH(left, top, rectWidth, rectHeight));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class NamaClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    final rectWidth = 150.0;
    final rectHeight = 10.0;

    final left = 80.0;
    final top = 100.0;

    path.addRect(Rect.fromLTWH(left, top, rectWidth, rectHeight));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

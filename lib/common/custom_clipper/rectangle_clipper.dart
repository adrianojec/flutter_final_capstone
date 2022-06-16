import 'package:flutter/material.dart';

class RectangleClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.85, 0);
    path.lineTo(size.width * 0.95, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}

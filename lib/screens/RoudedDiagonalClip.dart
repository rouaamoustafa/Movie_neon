import 'package:flutter/material.dart';

/// Diagonal clipper with rounded borders
class RoundedDiagonalPathClipper extends CustomClipper<Path> {
  final double width;
  final double height;
  final List<Offset> points;

  RoundedDiagonalPathClipper({required this.width, required this.height, required this.points});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    for (var i = 0; i < points.length; i++) {
      if (i == 0) {
        path.quadraticBezierTo(points[i].dx, points[i].dy, points[i + 1].dx, points[i + 1].dy);
      } else if (i == points.length - 1) {
        path.lineTo(points[i].dx, points[i].dy);
        path.quadraticBezierTo(points[i].dx, points[i].dy, points[0].dx, points[0].dy);
      } else {
        path.lineTo(points[i].dx, points[i].dy);
      }
    }
    path.close();
    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

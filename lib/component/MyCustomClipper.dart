import 'dart:math';

import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Size newSize = Size(size.width, size.height - 40);
    double radius = 40;
    Offset center = Offset(6 * size.width / 7, size.height + 20);
    Offset firstEnd = Offset(6 * size.width / 7, size.height - radius);
    Offset secondEnd = Offset(6 * size.width / 7 + radius, size.height);
    print('size: ' + size.toString());
    // TODO: implement getClip
    Path path = Path()
      ..lineTo(0, size.height)
      // ..arcToPoint(
      //   Offset(7 * size.width / 8, size.height - radius),
      //   radius: Radius.circular(radius),
      // )
      // ..arcToPoint(
      //   Offset(7 * size.width / 8 + radius, size.height),
      //   radius: Radius.circular(radius),
      // )
      // // ..arcTo(
      // //     Rect.fromCircle(
      // //       center: Offset(3 * size.width / 4, size.height),
      // //       radius: radius,
      // //     ),
      // //     1 * pi,
      // //     2,
      // //     true)

      // ..lineTo(size.width, size.height)
      ..arcTo(
          Rect.fromCircle(
            center: center,
            radius: radius,
          ),
          1.3 * pi,
          1.8 * pi,
          true);
    // ..lineTo(size.width, 0)
    // ..lineTo(0, 0)
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

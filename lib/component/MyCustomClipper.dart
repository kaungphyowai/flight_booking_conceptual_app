import 'dart:math';

import 'package:flutter/cupertino.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Size newSize = Size(size.width, size.height - 35);
    double radius = 50;
    Offset center = Offset(6 * newSize.width / 7, newSize.height);
    Offset firstEnd = Offset(6 * newSize.width / 7, newSize.height - radius);
    Offset secondEnd = Offset(6 * newSize.width / 7 + radius, newSize.height);
    print('newSize: ' + newSize.toString());
    // TODO: implement getClip
    Path path = Path()
      ..lineTo(0, newSize.height)
      ..lineTo(6 * newSize.width / 7 - radius, newSize.height)
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
      ..arcToPoint(
        firstEnd,
        clockwise: true,
        radius: Radius.circular(radius),
      )
      ..arcToPoint(
        secondEnd,
        clockwise: true,
        radius: Radius.circular(radius),
      )
      ..lineTo(newSize.width, newSize.height)
      ..lineTo(newSize.width, 0)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

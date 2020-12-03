import 'package:flutter/cupertino.dart';

class TicketClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Offset firstControlPoint = Offset(8 * size.width / 10, size.height / 2);
    Offset firstEndPoing = Offset(size.width, size.height);
    Offset seconControlPoint = Offset(2 * size.width / 10, size.height / 2);
    Offset secondEndingPoint = Offset(0, 0);
    // TODO: implement getClip
    Path path = Path()
      ..lineTo(size.width, 0)
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoing.dx, firstEndPoing.dy)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(seconControlPoint.dx, seconControlPoint.dy,
          secondEndingPoint.dx, secondEndingPoint.dy);
    // ..lineTo(size.width, size.height)
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

import 'package:flutter/material.dart';

class NavbarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var width = size.width;
    var height = size.height;
    final path = Path()
      //
      ..moveTo(0, 0)
      ..lineTo(width / 2 - 60, 0)
      ..quadraticBezierTo(
        width / 2 - 49,
        height / 2 - 33,
        width / 2 - 50,
        height / 2 - 20,
      )
      ..arcToPoint(
        Offset(width / 2 + 50, height / 2 - 20),
        clockwise: false,
        radius: Radius.circular(1),
      )
      ..quadraticBezierTo(
        width / 2 + 49,
        height / 2 - 33,
        width / 2 + 60,
        0,
      )
      //
      ..lineTo(width - 33, 0)
      ..arcToPoint(
        Offset(width - 15, 25),
        clockwise: true,
        radius: Radius.circular(23),
      )
      ..lineTo(width - 15, height - 25)
      ..arcToPoint(
        Offset(width - 35, height),
        clockwise: true,
        radius: Radius.circular(23),
      )
      ..lineTo(35, height)
      ..arcToPoint(
        Offset(
          15,
          height - 15,
        ),
        clockwise: true,
        radius: Radius.circular(23),
      )
      //
      ..lineTo(15, 25)
      ..arcToPoint(
        Offset(35, 0),
        clockwise: true,
        radius: Radius.circular(23),
      )

      //
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

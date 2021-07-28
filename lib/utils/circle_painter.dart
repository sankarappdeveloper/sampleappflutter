import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {


// Variable declaration must be lowerCamelCase
    Color ddcolor;
  CirclePainter(this.ddcolor);

  @override
  void paint(Canvas canvas, Size size) {

    final _paint = Paint()
      ..color = ddcolor
      ..strokeWidth = 2
    // Use [PaintingStyle.fill] if you want the circle to be filled.
      ..style = PaintingStyle.stroke;

    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      _paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
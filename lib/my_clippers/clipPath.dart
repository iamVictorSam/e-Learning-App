import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.83;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.quadraticBezierTo(0, size.height * 0.38, 0, size.height * 0.50);
    path_0.cubicTo(size.width * 0.27, size.height * 0.79, size.width * 0.71,
        size.height * 0.80, size.width * 0.96, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.96, size.height * 0.38, size.width * 0.96, 0);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

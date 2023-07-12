import 'package:flutter/material.dart';

class _SunrisePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final skyGradient = RadialGradient(
      center: Alignment.topCenter,
      radius: 1.5,
      colors: [
        Colors.blue[200]!,
        Colors.white,
      ],
    );

    // create sky
    final skyRect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(
        skyRect, Paint()..shader = skyGradient.createShader(skyRect));

    // create sun
    final sunPaint = Paint()..color = Colors.yellow[800]!;
    final sunRadius = size.height / 12;
    final sunY = 2 * sunRadius;
    final sunPath = Path()
      ..addOval(Rect.fromCircle(
          center: Offset((size.width / 3) * 1, sunY), radius: sunRadius));
    canvas.drawPath(sunPath, sunPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class SunriseCanvas extends StatelessWidget {
  const SunriseCanvas({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return CustomPaint(
          painter: _SunrisePainter(),
          size: Size(constraints.maxWidth, constraints.maxHeight),
        );
      },
    );
  }
}

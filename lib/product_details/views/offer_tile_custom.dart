import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final BuildContext context;

  DashedBorderPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromRGBO(237, 109, 78, 1)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    final dashWidth = size.width * 0.02; // Adjust as needed
    final dashSpace = dashWidth * 0.5; // Adjust as needed

    // Draw background color
    final backgroundPaint = Paint()
      ..color = const Color.fromRGBO(255, 248, 247, 1)
      ..style = PaintingStyle.fill;

    final backgroundRect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(backgroundRect, backgroundPaint);

    void drawDashedLine(Offset start, Offset end) {
      final totalDistance = (end - start).distance;
      final dashCount = (totalDistance / (dashWidth + dashSpace)).floor();
      for (int i = 0; i < dashCount; i++) {
        final startPoint = Offset.lerp(start, end, i / dashCount)!;
        final endPoint = Offset.lerp(start, end, (i + 0.5) / dashCount)!;
        canvas.drawLine(startPoint, endPoint, paint);
      }
    }

    void drawDashedArc(
        Rect rect, double startAngle, double sweepAngle, Paint paint) {
      double arcLength = sweepAngle * rect.width / 2;
      int dashCount = (arcLength / (dashWidth + dashSpace)).floor();
      double angleBetweenDashes = sweepAngle / dashCount;

      for (int i = 0; i < dashCount; i++) {
        double startDashAngle = startAngle + i * angleBetweenDashes;
        double endDashAngle = startDashAngle + (angleBetweenDashes * 0.5);
        canvas.drawArc(
            rect, startDashAngle, endDashAngle - startDashAngle, false, paint);
      }
    }

    // Draw top dashed line
    drawDashedLine(Offset(0, 0), Offset(size.width, 0));

    // Draw bottom dashed line
    drawDashedLine(Offset(0, size.height), Offset(size.width, size.height));

    // Draw left dashed line with dashed semicircle
    drawDashedLine(Offset(0, 0), Offset(0, size.height * 0.5 - 10));
    drawDashedArc(
      Rect.fromCircle(center: Offset(0, size.height / 2), radius: 10),
      1.5 * 3.14,
      3.14,
      paint,
    );
    drawDashedLine(Offset(0, size.height * 0.5 + 10), Offset(0, size.height));

    // Draw right dashed line with dashed semicircle
    drawDashedLine(
        Offset(size.width, 0), Offset(size.width, size.height * 0.5 - 10));
    drawDashedArc(
      Rect.fromCircle(center: Offset(size.width, size.height / 2), radius: 10),
      0.5 * 3.14,
      3.14,
      paint,
    );
    drawDashedLine(Offset(size.width, size.height * 0.5 + 10),
        Offset(size.width, size.height));

    // Draw middle partition
    drawDashedLine(
        Offset(size.width * 0.7, 0), Offset(size.width * 0.7, size.height));

    // Mask outer semicircles with white paint to keep background color inside dashed lines
    final maskPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // Mask left semicircle
    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, size.height/2), radius: 10),
      3.14,
      3.14,
      true,
      maskPaint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: Offset(0, size.height/2), radius: 10),
      0,
      3.14,
      true,
      maskPaint,
    );


    // Mask right semicircle
    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width, size.height / 2), radius: 10),
      3.14,
      3.14,
      true,
      maskPaint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width, size.height / 2), radius: 10),
      0,
      3.14,
      true,
      maskPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:complex1/exports/configs.dart';

double getTotal() {
  double total = 0;
  expenses.forEach((element) {
    total += element['amount'];
  });
  return total;
}

class Charts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: AppColors.shadow,
        color: AppColors.primaryWhite,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomPaint(
              foregroundPainter: ChartsPainter(),
              child: Container(),
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: AppColors.shadow,
                color: AppColors.primaryWhite,
              ),
              child: Text(
                '\$${getTotal()}',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChartsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    Paint paint = Paint();

    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 40;

    double startAngel = -pi / 2;
    for (int i = 0; i < expenses.length; i++) {
      var expense = expenses[i];
      double sweepAngle = (expense['amount'] / getTotal()) * 2 * pi;
      paint.color = AppColors.chartColors[i];

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngel,
        sweepAngle,
        false,
        paint,
      );
      startAngel += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>  true;
}

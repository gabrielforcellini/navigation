import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Definir um pincel
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4
      ..style = PaintingStyle.fill;

    // Desenhar (40-41)
    canvas.drawLine(
        const Offset(321.91, 519.95), const Offset(323.91, 503.97), paint);

    // Desenhar (41-42)
    canvas.drawLine(
        const Offset(327.84, 472.52), const Offset(328.78, 462.68), paint);

    // CON 42 -> CON 43
    canvas.drawLine(
        const Offset(328.78, 462.68), const Offset(332.26, 436.54), paint);

    // CON 42 -> CON 62
    canvas.drawLine(
        const Offset(329.98, 465), const Offset(290.84, 460.39), paint);

    // CON 43 -> CON 44
    canvas.drawLine(
        const Offset(332.26, 436.54), const Offset(338, 389.69), paint);

    // CON 44 -> CON 45
    canvas.drawLine(
        const Offset(338, 389.69), const Offset(340.80, 365.84), paint);

    // CON 45 -> CON 46
    canvas.drawLine(
        const Offset(340.80, 365.84), const Offset(344.27, 343.12), paint);

    // CON 45 -> CON 58
    canvas.drawLine(
        const Offset(340.80, 367.5), const Offset(302.70, 362.5), paint);

    // CON 46 -> CON 47
    canvas.drawLine(
        const Offset(344.27, 343.12), const Offset(347.41, 314.82), paint);

    // CON 47 -> CON 48
    canvas.drawLine(
        const Offset(347.41, 314.82), const Offset(351.80, 280), paint);

    // CON 47 -> CON 55
    canvas.drawLine(
        const Offset(347.41, 316.82), const Offset(309.56, 311.35), paint);

    // CON 48 -> CON 49
    canvas.drawLine(
        const Offset(351.80, 280), const Offset(355.53, 252.83), paint);

    // CON 48 -> CON 53
    canvas.drawLine(
        const Offset(351.70, 282), const Offset(313.84, 277), paint);

    // CON 49 -> CON 50
    canvas.drawLine(
        const Offset(355.53, 252.83), const Offset(358.62, 228.69), paint);

    // CON 50 -> CON 51
    canvas.drawLine(
        const Offset(358.62, 230.69), const Offset(320.42, 225.42), paint);

    // CON 51 -> CON 52
    canvas.drawLine(
        const Offset(322.56, 224.56), const Offset(317.7, 262), paint);

    // CON 52 -> CON 53
    canvas.drawLine(
        const Offset(317.7, 262), const Offset(315.94, 278.68), paint);

    // CON 53 -> CON 54
    canvas.drawLine(
        const Offset(315.94, 278.68), const Offset(313.55, 293.99), paint);

    // CON 54 -> CON 55
    canvas.drawLine(
        const Offset(313.55, 293.99), const Offset(311.41, 314.25), paint);

    // CON 55 -> CON 56
    canvas.drawLine(
        const Offset(311.41, 314.25), const Offset(308.7, 331.29), paint);

    // CON 56 -> CON 57
    canvas.drawLine(
        const Offset(308.7, 331.29), const Offset(308.13, 340.83), paint);

    // CON 56 -> CON 65
    canvas.drawLine(
        const Offset(309.57, 328.69), const Offset(252.5, 321.52), paint);

    // CON 57 -> CON 58
    canvas.drawLine(
        const Offset(308.13, 340.83), const Offset(304.99, 365), paint);

    // CON 58 -> CON 59
    canvas.drawLine(
        const Offset(304.99, 365), const Offset(301.4, 391.98), paint);

    // CON 59 -> CON 60
    canvas.drawLine(
        const Offset(301.4, 391.98), const Offset(296.5, 432.27), paint);

    // CON 59 -> CON 64
    canvas.drawLine(
        const Offset(301.4, 391.98), const Offset(244.93, 384.91), paint);

    // CON 60 -> CON 61
    canvas.drawLine(
        const Offset(296.5, 432.27), const Offset(293.53, 454), paint);

    // CON 61 -> CON 62
    canvas.drawLine(
        const Offset(293.53, 454), const Offset(292.59, 463.39), paint);

    // CON 62 -> CON 63
    canvas.drawLine(
        const Offset(292.99, 458.25), const Offset(290, 478.83), paint);

    //
    //
    //
    // DAQUI PARA BAIXO ANALISAR
    //
    //
    //

    // CON 65 -> CON 64
    canvas.drawLine(
        const Offset(254.85, 319.72), const Offset(247.13, 384.25), paint);

    // CON 64 -> CON 34
    canvas.drawLine(
        const Offset(247.13, 384.25), const Offset(239.56, 443.12), paint);

    // CON 65 -> CON 8
    canvas.drawLine(
        const Offset(250.85, 323.12), const Offset(253.71, 202.55), paint);

    // CON 65 -> CON 66
    canvas.drawLine(
        const Offset(252.85, 321.72), const Offset(218.3, 317.40), paint);

    // CON 34 -> CON 35
    canvas.drawLine(
        const Offset(239.56, 442.12), const Offset(259, 510.12), paint);

    // CON 35 -> CON 36
    canvas.drawLine(
        const Offset(259, 510.12), const Offset(282.27, 574.54), paint);

    // CON 36 -> CON 37
    canvas.drawLine(
        const Offset(281.27, 573.54), const Offset(314.84, 584.53), paint);

    // CON 37 -> CON 38
    canvas.drawLine(
        const Offset(313.84, 584.53), const Offset(357.99, 576.54), paint);

    // CON 38 -> CON 39
    canvas.drawLine(
        const Offset(356.99, 578.54), const Offset(358.12, 544.41), paint);

    // CON 8 -> CON 7
    canvas.drawLine(
        const Offset(255.71, 204.55), const Offset(233.12, 204.70), paint);

    // CON 7 -> CON 2
    canvas.drawLine(
        const Offset(233.12, 204.70), const Offset(136, 202), paint);

    // CON 2 -> CON 1
    canvas.drawLine(
        const Offset(138, 202), const Offset(117.84, 142.84), paint);

    // CON 2 -> CON 3
    canvas.drawLine(const Offset(138, 202), const Offset(1.86, 200.54), paint);

    // CON 2 -> CON 4 (ADMINISTRATIVO)
    canvas.drawLine(
        const Offset(138, 202), const Offset(137.21, 234.27), paint);

    // CON 3 -> CON 5
    canvas.drawLine(
        const Offset(3.86, 199), const Offset(11.28, 298.26), paint);

    // CON 5 -> CON 6
    canvas.drawLine(
        const Offset(9.28, 298.26), const Offset(136.27, 300.40), paint);

    // CON 5 -> CON 11
    canvas.drawLine(
        const Offset(11.28, 298.26), const Offset(19.70, 411.79), paint);

    // CON 6 -> CON 9 (BIBLIOTECA)
    canvas.drawLine(
        const Offset(135.7, 298.5), const Offset(134.59, 361.40), paint);

    // CON 9 -> CON 10
    canvas.drawLine(
        const Offset(134.59, 361.40), const Offset(133.71, 409.39), paint);

    // CON 11 -> CON 10
    canvas.drawLine(
        const Offset(17.70, 409.59), const Offset(135.41, 411.3), paint);

    // CON 11 -> CON 14
    canvas.drawLine(
        const Offset(19.70, 411.79), const Offset(24.14, 469.11), paint);

    // CON 10 -> CON 12
    canvas.drawLine(
        const Offset(133.71, 409.3), const Offset(139.87, 431.84), paint);

    // CON 12 -> CON 13
    canvas.drawLine(
        const Offset(139.27, 428.84), const Offset(138.9, 471.7), paint);

    // CON 13 -> CON 14
    canvas.drawLine(
        const Offset(140.42, 469.80), const Offset(23.14, 467.11), paint);

    // CON 13 -> CON 25
    canvas.drawLine(
        const Offset(138.9, 471.7), const Offset(139, 483.12), paint);

    // CON 14 -> CON 22
    canvas.drawLine(
        const Offset(24.14, 469.11), const Offset(33.33, 583.96), paint);

    // CON 22 -> CON 23
    canvas.drawLine(
        const Offset(33.33, 583.96), const Offset(34.53, 598.54), paint);

    // CON 23 -> CON 24
    canvas.drawLine(
        const Offset(32.5, 598.54), const Offset(142.57, 593.95), paint);

    // CON 24 -> CON 26
    canvas.drawLine(
        const Offset(141.57, 594.95), const Offset(141.85, 576.69), paint);

    // CON 26 -> CON 27
    canvas.drawLine(
        const Offset(139.85, 578.97), const Offset(165.56, 578.97), paint);

    // CON 27 -> CON 28
    canvas.drawLine(
        const Offset(165.56, 578.97), const Offset(186.13, 578.97), paint);

    // CON 28 -> CON 29
    canvas.drawLine(
        const Offset(185.13, 580.5), const Offset(185.13, 549.68), paint);

    // CON 28 -> CON 30
    canvas.drawLine(
        const Offset(186.13, 578.97), const Offset(236.77, 579.27), paint);

    // CON 30 -> CON 31
    canvas.drawLine(
        const Offset(235.57, 580.97), const Offset(237.56, 553.78), paint);

    // CON 30 -> CON 36
    canvas.drawLine(
        const Offset(236.77, 579.27), const Offset(284.27, 574.54), paint);

    // CON 32 -> CON 33
    canvas.drawLine(
        const Offset(201, 508.50), const Offset(201, 459.19), paint);

    // CON 4 (ADMINISTRATIVO) -> CON 6
    canvas.drawLine(const Offset(138, 202), const Offset(135.7, 302.5), paint);
  }

  // Função para desenhar a linha a partir das coordenadas
  void drawLineFromCoordinates(double xStart, double yStart, double xEnd,
      double yEnd, Canvas canvas, Paint paint) {
    canvas.drawLine(Offset(xStart, yStart), Offset(xEnd, yEnd), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

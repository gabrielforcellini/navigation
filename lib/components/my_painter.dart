import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  // Pincel
  final painter = Paint()
    ..color = Colors.red
    ..strokeWidth = 4
    ..style = PaintingStyle.fill;

  // Linha entre CON 40 -> CON 41
  final con4041 = [const Offset(321.91, 519.95), const Offset(323.91, 503.97)];

  // Linha entre CON 41 -> CON 42
  final con4142 = [const Offset(327.84, 472.52), const Offset(328.78, 462.68)];

  // Linha entre CON 42 -> CON 43
  final con4243 = [const Offset(328.78, 462.68), const Offset(332.26, 436.54)];

  // Linha entre CON 42 -> CON 62
  final con4262 = [const Offset(329.98, 465), const Offset(290.84, 460.39)];

  // Linha entre CON 43 -> CON 44
  final con4344 = [const Offset(332.26, 436.54), const Offset(338, 389.69)];

  // Linha entre CON 44 -> CON 45
  final con4445 = [const Offset(338, 389.69), const Offset(340.80, 365.84)];

  // Linha entre CON 45 -> CON 46
  final con4546 = [const Offset(340.80, 365.84), const Offset(344.27, 343.12)];

  // Linha entre CON 45 -> CON 58
  final con4558 = [const Offset(340.80, 367.5), const Offset(302.70, 362.5)];

  // Linha entre CON 46 -> CON 47
  final con4647 = [const Offset(344.27, 343.12), const Offset(347.41, 314.82)];

  // Linha entre CON 47 -> CON 48
  final con4748 = [const Offset(347.41, 314.82), const Offset(351.80, 280)];

  // Linha entre CON 47 -> CON 55
  final con4755 = [const Offset(347.41, 316.82), const Offset(309.56, 311.35)];

  // Linha entre CON 48 -> CON 49
  final con4849 = [const Offset(351.80, 280), const Offset(355.53, 252.83)];

  // Linha entre CON 48 -> CON 53
  final con4853 = [const Offset(351.70, 282), const Offset(313.84, 277)];

  // Linha entre CON 49 -> CON 50
  final con4950 = [const Offset(355.53, 252.83), const Offset(358.62, 228.69)];

  // Linha entre CON 50 -> CON 51
  final con5051 = [const Offset(358.62, 230.69), const Offset(320.42, 225.42)];

  // Linha entre CON 51 -> CON 52
  final con5152 = [const Offset(322.56, 224.56), const Offset(317.7, 262)];

  // Linha entre CON 52 -> CON 53
  final con5253 = [const Offset(317.7, 262), const Offset(315.94, 278.68)];

  // Linha entre CON 53 -> CON 54
  final con5354 = [const Offset(315.94, 278.68), const Offset(313.55, 293.99)];

  // Linha entre CON 54 -> CON 55
  final con5455 = [const Offset(313.55, 293.99), const Offset(311.41, 314.25)];

  // Linha entre CON 55 -> CON 56
  final con5556 = [const Offset(311.41, 314.25), const Offset(308.7, 331.29)];

  // Linha entre CON 56 -> CON 57
  final con5657 = [const Offset(308.7, 331.29), const Offset(308.13, 340.83)];

  // Linha entre CON 56 -> CON 65
  final con5665 = [const Offset(309.57, 328.69), const Offset(252.5, 321.52)];

  // Linha entre CON 57 -> CON 58
  final con5758 = [const Offset(308.13, 340.83), const Offset(304.99, 365)];

  // Linha entre CON 58 -> CON 59
  final con5859 = [const Offset(304.99, 365), const Offset(301.4, 391.98)];

  // Linha entre CON 59 -> CON 60
  final con5960 = [const Offset(301.4, 391.98), const Offset(296.5, 432.27)];

  // Linha entre CON 59 -> CON 64
  final con5964 = [const Offset(301.4, 391.98), const Offset(244.93, 384.91)];

  // Linha entre CON 60 -> CON 61
  final con6061 = [const Offset(296.5, 432.27), const Offset(293.53, 454)];

  // Linha entre CON 61 -> CON 62
  final con6162 = [const Offset(293.53, 454), const Offset(292.59, 463.39)];

  // Linha entre CON 62 -> CON 63
  final con6263 = [const Offset(292.99, 458.25), const Offset(290, 478.83)];

  // Linha entre CON 65 -> CON 64
  final con6564 = [const Offset(254.85, 319.72), const Offset(247.13, 384.25)];

  // Linha entre CON 64 -> CON 34
  final con6434 = [const Offset(247.13, 384.25), const Offset(239.56, 443.12)];

  // Linha entre CON 65 -> CON 8
  final con658 = [const Offset(250.85, 323.12), const Offset(253.71, 202.55)];

  // Linha entre CON 65 -> CON 66
  final con6566 = [const Offset(252.85, 321.72), const Offset(218.3, 317.40)];

  // Linha entre CON 34 -> CON 35
  final con3435 = [const Offset(239.56, 442.12), const Offset(259, 510.12)];

  // Linha entre CON 35 -> CON 36
  final con3536 = [const Offset(259, 510.12), const Offset(282.27, 574.54)];

  // Linha entre CON 36 -> CON 37
  final con3637 = [const Offset(281.27, 573.54), const Offset(314.84, 584.53)];

  // Linha entre CON 37 -> CON 38
  final con3738 = [const Offset(313.84, 584.53), const Offset(357.99, 576.54)];

  // Linha entre CON 38 -> CON 39
  final con3839 = [const Offset(356.99, 578.54), const Offset(358.12, 544.41)];

  // Linha entre CON 8 -> CON 7
  final con87 = [const Offset(255.71, 204.55), const Offset(233.12, 204.70)];

  // Linha entre CON 7 -> CON 2
  final con72 = [const Offset(233.12, 204.70), const Offset(136, 202)];

  // Linha entre CON 2 -> CON 1
  final con21 = [const Offset(138, 202), const Offset(117.84, 142.84)];

  // Linha entre CON 2 -> CON 3
  final con23 = [const Offset(138, 202), const Offset(1.86, 200.54)];

  // Linha entre CON 2 -> CON 4 (ADMINISTRATIVO)
  final con24 = [const Offset(138, 202), const Offset(137.21, 234.27)];

  // Linha entre CON 3 -> CON 5
  final con35 = [const Offset(3.86, 199), const Offset(11.28, 298.26)];

  // Linha entre CON 5 -> CON 6
  final con56 = [const Offset(9.28, 298.26), const Offset(136.27, 300.40)];

  // Linha entre CON 5 -> CON 11
  final con511 = [const Offset(11.28, 298.26), const Offset(19.70, 411.79)];

  // Linha entre CON 6 -> CON 9 (BIBLIOTECA)
  final con69 = [const Offset(135.7, 298.5), const Offset(134.59, 361.40)];

  // Linha entre CON 9 -> CON 10
  final con910 = [const Offset(134.59, 361.40), const Offset(133.71, 409.39)];

  // Linha entre CON 11 -> CON 10
  final con1110 = [const Offset(17.70, 409.59), const Offset(135.41, 411.3)];

  // Linha entre CON 11 -> CON 14
  final con1114 = [const Offset(19.70, 411.79), const Offset(24.14, 469.11)];

  // Linha entre CON 10 -> CON 12
  final con1012 = [const Offset(133.71, 409.3), const Offset(139.87, 431.84)];

  // Linha entre CON 12 -> CON 13
  final con1213 = [const Offset(139.27, 428.84), const Offset(138.9, 471.7)];

  // Linha entre CON 13 -> CON 14
  final con1314 = [const Offset(140.42, 469.80), const Offset(23.14, 467.11)];

  // Linha entre CON 13 -> CON 25
  final con1325 = [const Offset(138.9, 471.7), const Offset(139, 483.12)];

  // Linha entre CON 14 -> CON 22
  final con1422 = [const Offset(24.14, 469.11), const Offset(33.33, 583.96)];

  // Linha entre CON 22 -> CON 23
  final con2223 = [const Offset(33.33, 583.96), const Offset(34.53, 598.54)];

  // Linha entre CON 23 -> CON 24
  final con2324 = [const Offset(32.5, 598.54), const Offset(142.57, 593.95)];

  // Linha entre CON 24 -> CON 26
  final con2426 = [const Offset(141.57, 594.95), const Offset(141.85, 576.69)];

  // Linha entre CON 26 -> CON 27
  final con2627 = [const Offset(139.85, 578.97), const Offset(165.56, 578.97)];

  // Linha entre CON 27 -> CON 28
  final con2728 = [const Offset(165.56, 578.97), const Offset(186.13, 578.97)];

  // Linha entre CON 28 -> CON 29
  final con2829 = [const Offset(185.13, 580.5), const Offset(185.13, 549.68)];

  // Linha entre CON 28 -> CON 30
  final con2830 = [const Offset(186.13, 578.97), const Offset(236.77, 579.27)];

  // Linha entre CON 30 -> CON 31
  final con3031 = [const Offset(235.57, 580.97), const Offset(237.56, 553.78)];

  // Linha entre CON 30 -> CON 36
  final con3036 = [const Offset(236.77, 579.27), const Offset(284.27, 574.54)];

  // Linha entre CON 32 -> CON 33
  final con3233 = [const Offset(201, 508.50), const Offset(201, 459.19)];

  // Linha entre CON 4 (ADMINISTRATIVO) -> CON 6
  final con46 = [const Offset(138, 202), const Offset(135.7, 302.5)];

  @override
  void paint(Canvas canvas, Size size) {
    // Desenhar (40-41)
    canvas.drawLine(con4041[0], con4041[1], painter);

    // Desenhar (41-42)
    canvas.drawLine(con4142[0], con4142[1], painter);

    // CON 42 -> CON 43
    canvas.drawLine(con4243[0], con4243[1], painter);

    // CON 42 -> CON 62
    canvas.drawLine(con4262[0], con4262[1], painter);

    // CON 43 -> CON 44
    canvas.drawLine(con4344[0], con4344[1], painter);

    // CON 44 -> CON 45
    canvas.drawLine(con4445[0], con4445[1], painter);

    // CON 45 -> CON 46
    canvas.drawLine(con4546[0], con4546[1], painter);

    // CON 45 -> CON 58
    canvas.drawLine(con4558[0], con4558[1], painter);

    // CON 46 -> CON 47
    canvas.drawLine(con4647[0], con4647[1], painter);

    // CON 47 -> CON 48
    canvas.drawLine(con4748[0], con4748[1], painter);

    // CON 47 -> CON 55
    canvas.drawLine(con4755[0], con4755[1], painter);

    // CON 48 -> CON 49
    canvas.drawLine(con4849[0], con4849[1], painter);

    // CON 48 -> CON 53
    canvas.drawLine(con4853[0], con4853[1], painter);

    // CON 49 -> CON 50
    canvas.drawLine(con4950[0], con4950[1], painter);

    // CON 50 -> CON 51
    canvas.drawLine(con5051[0], con5051[1], painter);

    // CON 51 -> CON 52
    canvas.drawLine(con5152[0], con5152[1], painter);

    // CON 52 -> CON 53
    canvas.drawLine(con5253[0], con5253[1], painter);

    // CON 53 -> CON 54
    canvas.drawLine(con5354[0], con5354[1], painter);

    // CON 54 -> CON 55
    canvas.drawLine(con5455[0], con5455[1], painter);

    // CON 55 -> CON 56
    canvas.drawLine(con5556[0], con5556[1], painter);

    // CON 56 -> CON 57
    canvas.drawLine(con5657[0], con5657[1], painter);

    // CON 56 -> CON 65
    canvas.drawLine(con5665[0], con5665[1], painter);

    // CON 57 -> CON 58
    canvas.drawLine(con5758[0], con5758[1], painter);

    // CON 58 -> CON 59
    canvas.drawLine(con5859[0], con5859[1], painter);

    // CON 59 -> CON 60
    canvas.drawLine(con5960[0], con5960[1], painter);

    // CON 59 -> CON 64
    canvas.drawLine(con5964[0], con5964[1], painter);

    // CON 60 -> CON 61
    canvas.drawLine(con6061[0], con6061[1], painter);

    // CON 61 -> CON 62
    canvas.drawLine(con6162[0], con6162[1], painter);

    // CON 62 -> CON 63
    canvas.drawLine(con6263[0], con6263[1], painter);

    // CON 65 -> CON 64
    canvas.drawLine(con6564[0], con6564[1], painter);

    // CON 64 -> CON 34
    canvas.drawLine(con6434[0], con6434[1], painter);

    // CON 65 -> CON 8
    canvas.drawLine(con658[0], con658[1], painter);

    // CON 65 -> CON 66
    canvas.drawLine(con6566[0], con6566[1], painter);

    // CON 34 -> CON 35
    canvas.drawLine(con3435[0], con3435[1], painter);

    // CON 35 -> CON 36
    canvas.drawLine(con3536[0], con3536[1], painter);

    // CON 36 -> CON 37
    canvas.drawLine(con3637[0], con3637[1], painter);

    // CON 37 -> CON 38
    canvas.drawLine(con3738[0], con3738[1], painter);

    // CON 38 -> CON 39
    canvas.drawLine(con3839[0], con3839[1], painter);

    // CON 8 -> CON 7
    canvas.drawLine(con87[0], con87[1], painter);

    // CON 7 -> CON 2
    canvas.drawLine(con72[0], con72[1], painter);

    // CON 2 -> CON 1
    canvas.drawLine(con21[0], con21[1], painter);

    // CON 2 -> CON 3
    canvas.drawLine(con23[0], con23[1], painter);

    // CON 2 -> CON 4 (ADMINISTRATIVO)
    canvas.drawLine(con24[0], con24[1], painter);

    // CON 3 -> CON 5
    canvas.drawLine(con35[0], con35[1], painter);

    // CON 5 -> CON 6
    canvas.drawLine(con56[0], con56[1], painter);

    // CON 5 -> CON 11
    canvas.drawLine(con511[0], con511[1], painter);

    // CON 6 -> CON 9 (BIBLIOTECA)
    canvas.drawLine(con69[0], con69[1], painter);

    // CON 9 -> CON 10
    canvas.drawLine(con910[0], con910[1], painter);

    // CON 11 -> CON 10
    canvas.drawLine(con1110[0], con1110[1], painter);

    // CON 11 -> CON 14
    canvas.drawLine(con1114[0], con1114[1], painter);

    // CON 10 -> CON 12
    canvas.drawLine(con1012[0], con1012[1], painter);

    // CON 12 -> CON 13
    canvas.drawLine(con1213[0], con1213[1], painter);

    // CON 13 -> CON 14
    canvas.drawLine(con1314[0], con1314[1], painter);

    // CON 13 -> CON 25
    canvas.drawLine(con1325[0], con1325[1], painter);

    // CON 14 -> CON 22
    canvas.drawLine(con1422[0], con1422[1], painter);

    // CON 22 -> CON 23
    canvas.drawLine(con2223[0], con2223[1], painter);

    // CON 23 -> CON 24
    canvas.drawLine(con2324[0], con2324[1], painter);

    // CON 24 -> CON 26
    canvas.drawLine(con2426[0], con2426[1], painter);

    // CON 26 -> CON 27
    canvas.drawLine(con2627[0], con2627[1], painter);

    // CON 27 -> CON 28
    canvas.drawLine(con2728[0], con2728[1], painter);

    // CON 28 -> CON 29
    canvas.drawLine(con2829[0], con2829[1], painter);

    // CON 28 -> CON 30
    canvas.drawLine(con2830[0], con2830[1], painter);

    // CON 30 -> CON 31
    canvas.drawLine(con3031[0], con3031[1], painter);

    // CON 30 -> CON 36
    canvas.drawLine(con3036[0], con3036[1], painter);

    // CON 32 -> CON 33
    canvas.drawLine(con3233[0], con3233[1], painter);

    // CON 4 (ADMINISTRATIVO) -> CON 6
    canvas.drawLine(con46[0], con46[1], painter);
  }

  // Função para desenhar a linha a partir das coordenadas
  void drawLineFromCoordinates(double xStart, double yStart, double xEnd,
      double yEnd, Canvas canvas, Paint painter) {
    canvas.drawLine(Offset(xStart, yStart), Offset(xEnd, yEnd), painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

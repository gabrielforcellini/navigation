import 'package:flutter/material.dart';

class RoutePainter extends CustomPainter {
  final List<int> caminho;

  RoutePainter(this.caminho);

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
  final con6162 = [const Offset(293.53, 450), const Offset(292.59, 463.39)];

  // Linha entre CON 62 -> CON 63
  final con6263 = [const Offset(292.99, 458.25), const Offset(290, 478.83)];

  // Linha entre CON 65 -> CON 64
  final con6564 = [const Offset(254.85, 319.72), const Offset(247.13, 384.25)];

  // Linha entre CON 64 -> CON 34
  final con6434 = [const Offset(247.13, 384.25), const Offset(239.56, 443.12)];

  // Linha entre CON 65 -> CON 8
  final con6508 = [const Offset(250.85, 323.12), const Offset(253.71, 202.55)];

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
  final con0807 = [const Offset(255.71, 204.55), const Offset(233.12, 204.70)];

  // Linha entre CON 7 -> CON 2
  final con0702 = [const Offset(233.12, 204.70), const Offset(136, 202)];

  // Linha entre CON 2 -> CON 1
  final con0201 = [const Offset(138, 202), const Offset(117.84, 142.84)];

  // Linha entre CON 2 -> CON 3
  final con0203 = [const Offset(138, 202), const Offset(1.86, 200.54)];

  // Linha entre CON 2 -> CON 4 (ADMINISTRATIVO)
  final con0204 = [const Offset(138, 202), const Offset(137.21, 234.27)];

  // Linha entre CON 3 -> CON 5
  final con0305 = [const Offset(3.86, 199), const Offset(11.28, 298.26)];

  // Linha entre CON 5 -> CON 6
  final con0506 = [const Offset(9.28, 298.26), const Offset(136.27, 300.40)];

  // Linha entre CON 5 -> CON 11
  final con0511 = [const Offset(11.28, 298.26), const Offset(19.70, 411.79)];

  // Linha entre CON 6 -> CON 9 (BIBLIOTECA)
  final con0609 = [const Offset(135.7, 298.5), const Offset(134.59, 361.40)];

  // Linha entre CON 9 -> CON 10
  final con0910 = [const Offset(134.59, 361.40), const Offset(133.71, 409.39)];

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
  final con0406 = [const Offset(137.21, 234.27), const Offset(135.7, 302.5)];

  // CON 26 -> XXIB
  final con26XXIB = [
    const Offset(141.85, 576.69),
    const Offset(139.70, 550.82)
  ];

  // CON 13 -> XXIA
  final con13XXIA = [
    const Offset(140.42, 469.80),
    const Offset(136.28, 502.83)
  ];

  // CON 12 -> BLOCO ESTUDANTE
  final con12ESTUD = [
    const Offset(139.87, 431.84),
    const Offset(181.98, 439.69)
  ];

  // CON 33 -> BLOCO ESTUDANTE
  final con33ESTUD = [const Offset(201, 459.19), const Offset(181.98, 439.69)];

  // CON 41 -> N/O
  final con41NO = [const Offset(327.84, 472.52), const Offset(326, 486.53)];

  // CON 63 -> N/O
  final con63NO = [const Offset(290, 478.83), const Offset(326, 485)];

  // CON 61 -> CON 34
  final con6134 = [const Offset(291.98, 451.54), const Offset(237.70, 444.11)];

  // CON 43 -> BLOCO K
  final con43K = [const Offset(332.26, 436.54), const Offset(347.40, 439.69)];

  // CON 43 -> BLOCO M
  final con43M = [const Offset(332.26, 436.54), const Offset(311.40, 434.25)];

  // CON 60 -> BLOCO M
  final con60M = [const Offset(296.5, 432.27), const Offset(311.40, 434.25)];

  // CON 60 -> BLOCO L
  final con60L = [const Offset(296.5, 432.27), const Offset(275.70, 428.83)];

  // CON 44 -> BLOCO J
  final con44J = [const Offset(338, 389.69), const Offset(319.13, 386.53)];

  // CON 59 -> BLOCO J
  final con59J = [const Offset(301.4, 391.98), const Offset(320, 386.53)];

  // CON 58 -> BLOCO I
  final con58I = [const Offset(302.70, 362.5), const Offset(284.27, 359.26)];

  // CON 45 -> BLOCO G
  final con45G = [const Offset(340.80, 367.5), const Offset(362.80, 370)];

  // CON 46 -> BLOCO H
  final con46H = [const Offset(344.27, 343.12), const Offset(323.41, 340.83)];

  // CON 57 -> BLOCO H
  final con57H = [const Offset(308.13, 340.83), const Offset(323.41, 340.83)];

  // CON 54 -> BLOCO E
  final con54E = [const Offset(313.55, 293.99), const Offset(329.97, 296.12)];

  // CON 54 -> BLOCO F
  final con54F = [const Offset(313.55, 293.99), const Offset(294.27, 290.83)];

  // CON 48 -> BLOCO ARQ
  final con48ARQ = [const Offset(351.80, 280), const Offset(372.55, 269.96)];

  // CON 49 -> BLOCO ARQ
  final con49ARQ = [const Offset(355.53, 252.83), const Offset(372.55, 269.96)];

  // CON 52 -> BLOCO B
  final con52B1 = [const Offset(317.55, 248.39), const Offset(336.75, 249.39)];
  final con52B2 = [const Offset(319.55, 248.39), const Offset(317.7, 262)];

  // CON 49 -> BLOCO B
  final con49B = [const Offset(355.53, 252.83), const Offset(336.55, 249.39)];

  // CON 51 -> BLOCO C
  final con51C1 = [const Offset(323.5, 231.97), const Offset(301.70, 229.97)];
  final con51C2 = [const Offset(322.56, 224.56), const Offset(321.5, 231.97)];

  // CON 39 -> BLOCO P
  final con39P = [const Offset(358.12, 544.41), const Offset(319.13, 535.39)];

  // CON 40 -> BLOCO P
  final con40P = [const Offset(327, 486.53), const Offset(319.5, 535.39)];

  // CON 66 -> CON 6
  final con6606 = [const Offset(218.3, 317.40), const Offset(133.7, 302.5)];

  // CON 25 -> XXIA
  final con25XXIA = [const Offset(139, 483.12), const Offset(139, 502.83)];

  // CON 131 -> CON 132
  final con131132 = [const Offset(26.56, 522.52), const Offset(146.27, 526.82)];

  // XXIA -> CON 132
  final con132XXIA = [
    const Offset(138.28, 502.83),
    const Offset(146.27, 526.82)
  ];

  // XXIB -> CON 132
  final con132XXIB = [
    const Offset(139.70, 550.82),
    const Offset(146.27, 526.82)
  ];

  // XXIC -> CON 132
  final con132XXIC = [
    const Offset(202.83, 529.82),
    const Offset(146.27, 526.82),
  ];

  // CON 35 -> CON 132
  final con35132 = [
    const Offset(261.5, 508.52),
    const Offset(146.27, 526.82),
  ];

  // Linha entre CON 36 -> BLOCO Z
  final con36Z1 = [const Offset(281.27, 573.54), const Offset(271.98, 608.24)];
  final con36Z2 = [const Offset(270, 608.24), const Offset(287.97, 610.53)];

  // Linha entre CON 37 -> BLOCO Z
  final con37Z1 = [const Offset(313.84, 584.53), const Offset(321.84, 608.24)];
  final con37Z2 = [const Offset(322.84, 608.24), const Offset(287.97, 610.53)];

  // CON 47 -> CON 133
  final con47133 = [const Offset(347.41, 316.82), const Offset(350, 301.12)];

  // CON 48 -> CON 133
  final con48133 = [const Offset(351.80, 280), const Offset(350, 301.12)];

  // CON 133 -> BLOCO E
  final con133E = [const Offset(351.5, 299.12), const Offset(329.97, 296.12)];

  // CON 8 -> CON 67 -> BLOCO C
  final con8671 = [const Offset(255.71, 204.55), const Offset(290.12, 209)];
  final con8672 = [const Offset(290.12, 207.5), const Offset(287, 229.97)];

  // CON 67 -> BLOCO C
  final con67C = [const Offset(285.5, 228), const Offset(301.70, 229.97)];

  // CON 67 -> CON 52
  final con67521 = [const Offset(286.5, 228), const Offset(284.12, 256.5)];
  final con67522 = [const Offset(282, 256), const Offset(319.7, 260)];

  @override
  void paint(Canvas canvas, Size size) {
    if (caminho.isEmpty) return;

    for (int i = 0; i < caminho.length - 1; i++) {
      List<List<Offset>> rotas = buscaCoordenadas(caminho[i], caminho[i + 1]);
      for (var coordenadas in rotas) {
        if (coordenadas.isNotEmpty) {
          Offset x = coordenadas[0];
          Offset y = coordenadas[1];
          canvas.drawLine(x, y, painter);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  List<List<Offset>> buscaCoordenadas(int inicio, int fim) {
    if ((inicio == 60 && fim == 61) || (inicio == 61 && fim == 60)) {
      // CON 40 -> CON 41
      return [con4041];
    } else if ((inicio == 61 && fim == 62) || (inicio == 62 && fim == 61)) {
      // CON 41 -> CON 42
      return [con4142];
    } else if ((inicio == 62 && fim == 63) || (inicio == 63 && fim == 62)) {
      // CON 42 -> CON 43
      return [con4243];
    } else if ((inicio == 62 && fim == 82) || (inicio == 82 && fim == 62)) {
      // CON 42 -> CON 62
      return [con4262];
    } else if ((inicio == 63 && fim == 64) || (inicio == 64 && fim == 63)) {
      // CON 43 -> CON 44
      return [con4344];
    } else if ((inicio == 64 && fim == 65) || (inicio == 65 && fim == 64)) {
      // CON 44 -> CON 45
      return [con4445];
    } else if ((inicio == 65 && fim == 66) || (inicio == 66 && fim == 65)) {
      // CON 45 -> CON 46
      return [con4546];
    } else if ((inicio == 65 && fim == 78) || (inicio == 78 && fim == 65)) {
      // CON 45 -> CON 58
      return [con4558];
    } else if ((inicio == 66 && fim == 67) || (inicio == 67 && fim == 66)) {
      // CON 46 -> CON 47
      return [con4647];
    } else if ((inicio == 67 && fim == 68) || (inicio == 68 && fim == 67)) {
      // CON 47 -> CON 48
      return [con4748];
    } else if ((inicio == 67 && fim == 75) || (inicio == 75 && fim == 67)) {
      // CON 47 -> CON 55
      return [con4755];
    } else if ((inicio == 68 && fim == 69) || (inicio == 69 && fim == 68)) {
      // CON 48 -> CON 49
      return [con4849];
    } else if ((inicio == 68 && fim == 73) || (inicio == 73 && fim == 68)) {
      // CON 48 -> CON 53
      return [con4853];
    } else if ((inicio == 69 && fim == 70) || (inicio == 70 && fim == 69)) {
      // Linha entre CON 49 -> CON 50
      return [con4950];
    } else if ((inicio == 70 && fim == 71) || (inicio == 71 && fim == 70)) {
      // Linha entre CON 50 -> CON 51
      return [con5051];
    } else if ((inicio == 71 && fim == 72) || (inicio == 72 && fim == 71)) {
      // Linha entre CON 51 -> CON 52
      return [con5152];
    } else if ((inicio == 72 && fim == 73) || (inicio == 73 && fim == 72)) {
      // Linha entre CON 52 -> CON 53
      return [con5253];
    } else if ((inicio == 73 && fim == 74) || (inicio == 74 && fim == 73)) {
      // Linha entre CON 53 -> CON 54
      return [con5354];
    } else if ((inicio == 74 && fim == 75) || (inicio == 75 && fim == 74)) {
      // Linha entre CON 54 -> CON 55
      return [con5455];
    } else if ((inicio == 75 && fim == 76) || (inicio == 76 && fim == 75)) {
      // Linha entre CON 55 -> CON 56
      return [con5556];
    } else if ((inicio == 76 && fim == 77) || (inicio == 77 && fim == 76)) {
      // Linha entre CON 56 -> CON 57
      return [con5657];
    } else if ((inicio == 76 && fim == 85) || (inicio == 85 && fim == 76)) {
      // Linha entre CON 56 -> CON 65
      return [con5665];
    } else if ((inicio == 77 && fim == 78) || (inicio == 78 && fim == 77)) {
      // Linha entre CON 57 -> CON 58
      return [con5758];
    } else if ((inicio == 78 && fim == 79) || (inicio == 79 && fim == 78)) {
      // Linha entre CON 58 -> CON 59
      return [con5859];
    } else if ((inicio == 79 && fim == 80) || (inicio == 80 && fim == 79)) {
      // Linha entre CON 59 -> CON 60
      return [con5960];
    } else if ((inicio == 79 && fim == 84) || (inicio == 84 && fim == 79)) {
      // Linha entre CON 59 -> CON 64
      return [con5964];
    } else if ((inicio == 80 && fim == 81) || (inicio == 81 && fim == 80)) {
      // Linha entre CON 60 -> CON 61
      return [con6061];
    } else if ((inicio == 81 && fim == 82) || (inicio == 82 && fim == 81)) {
      // Linha entre CON 61 -> CON 62
      return [con6162];
    } else if ((inicio == 82 && fim == 83) || (inicio == 83 && fim == 82)) {
      // Linha entre CON 62 -> CON 63
      return [con6263];
    } else if ((inicio == 85 && fim == 84) || (inicio == 84 && fim == 85)) {
      // Linha entre CON 65 -> CON 64
      return [con6564];
    } else if ((inicio == 84 && fim == 54) || (inicio == 54 && fim == 84)) {
      // Linha entre CON 64 -> CON 34
      return [con6434];
    } else if ((inicio == 85 && fim == 28) || (inicio == 28 && fim == 85)) {
      // Linha entre CON 65 -> CON 8
      return [con6508];
    } else if ((inicio == 85 && fim == 86) || (inicio == 86 && fim == 85)) {
      // Linha entre CON 65 -> CON 66
      return [con6566];
    } else if ((inicio == 54 && fim == 55) || (inicio == 55 && fim == 54)) {
      // Linha entre CON 34 -> CON 35
      return [con3435];
    } else if ((inicio == 55 && fim == 56) || (inicio == 56 && fim == 55)) {
      // Linha entre CON 35 -> CON 36
      return [con3536];
    } else if ((inicio == 56 && fim == 57) || (inicio == 57 && fim == 56)) {
      // Linha entre CON 36 -> CON 37
      return [con3637];
    } else if ((inicio == 57 && fim == 58) || (inicio == 58 && fim == 57)) {
      // Linha entre CON 37 -> CON 38
      return [con3738];
    } else if ((inicio == 58 && fim == 59) || (inicio == 59 && fim == 58)) {
      // Linha entre CON 38 -> CON 39
      return [con3839];
    } else if ((inicio == 28 && fim == 27) || (inicio == 27 && fim == 28)) {
      // Linha entre CON 8 -> CON 7
      return [con0807];
    } else if ((inicio == 27 && fim == 22) || (inicio == 22 && fim == 27)) {
      // Linha entre CON 7 -> CON 2
      return [con0702];
    } else if ((inicio == 22 && fim == 21) || (inicio == 21 && fim == 22)) {
      // Linha entre CON 2 -> CON 1
      return [con0201];
    } else if ((inicio == 22 && fim == 23) || (inicio == 23 && fim == 22)) {
      // Linha entre CON 2 -> CON 3
      return [con0203];
    } else if ((inicio == 22 && fim == 0) || (inicio == 0 && fim == 22)) {
      // Linha entre CON 2 -> CON 4 (ADMINISTRATIVO)
      return [con0204];
    } else if ((inicio == 23 && fim == 25) || (inicio == 25 && fim == 23)) {
      // Linha entre CON 3 -> CON 5
      return [con0305];
    } else if ((inicio == 25 && fim == 26) || (inicio == 26 && fim == 25)) {
      // Linha entre CON 5 -> CON 6
      return [con0506];
    } else if ((inicio == 25 && fim == 31) || (inicio == 31 && fim == 25)) {
      // Linha entre CON 5 -> CON 11
      return [con0511];
    } else if ((inicio == 26 && fim == 1) || (inicio == 1 && fim == 26)) {
      // Linha entre CON 6 -> CON 9 (BIBLIOTECA)
      return [con0609];
    } else if ((inicio == 1 && fim == 30) || (inicio == 30 && fim == 1)) {
      // Linha entre CON 9 -> CON 10
      return [con0910];
    } else if ((inicio == 31 && fim == 30) || (inicio == 30 && fim == 31)) {
      // Linha entre CON 11 -> CON 10
      return [con1110];
    } else if ((inicio == 31 && fim == 34) || (inicio == 34 && fim == 31)) {
      // Linha entre CON 11 -> CON 14
      return [con1114];
    } else if ((inicio == 30 && fim == 32) || (inicio == 32 && fim == 30)) {
      // Linha entre CON 10 -> CON 12
      return [con1012];
    } else if ((inicio == 32 && fim == 33) || (inicio == 33 && fim == 32)) {
      // Linha entre CON 12 -> CON 13
      return [con1213];
    } else if ((inicio == 33 && fim == 34) || (inicio == 34 && fim == 33)) {
      // Linha entre CON 13 -> CON 14
      return [con1314];
    } else if ((inicio == 33 && fim == 45) || (inicio == 45 && fim == 33)) {
      // Linha entre CON 13 -> CON 25
      return [con1325];
    } else if ((inicio == 34 && fim == 42) || (inicio == 42 && fim == 34)) {
      // Linha entre CON 14 -> CON 22
      return [con1422];
    } else if ((inicio == 42 && fim == 43) || (inicio == 43 && fim == 42)) {
      // Linha entre CON 22 -> CON 23
      return [con2223];
    } else if ((inicio == 43 && fim == 44) || (inicio == 44 && fim == 43)) {
      // Linha entre CON 23 -> CON 24
      return [con2324];
    } else if ((inicio == 44 && fim == 46) || (inicio == 46 && fim == 44)) {
      // Linha entre CON 24 -> CON 26
      return [con2426];
    } else if ((inicio == 46 && fim == 47) || (inicio == 47 && fim == 46)) {
      // Linha entre CON 26 -> CON 27
      return [con2627];
    } else if ((inicio == 47 && fim == 48) || (inicio == 48 && fim == 47)) {
      // Linha entre CON 27 -> CON 28
      return [con2728];
    } else if ((inicio == 48 && fim == 49) || (inicio == 49 && fim == 48)) {
      // Linha entre CON 28 -> CON 29
      return [con2829];
    } else if ((inicio == 48 && fim == 50) || (inicio == 50 && fim == 48)) {
      // Linha entre CON 28 -> CON 30
      return [con2830];
    } else if ((inicio == 50 && fim == 51) || (inicio == 51 && fim == 50)) {
      // Linha entre CON 30 -> CON 31
      return [con3031];
    } else if ((inicio == 50 && fim == 56) || (inicio == 56 && fim == 50)) {
      // Linha entre CON 30 -> CON 36
      return [con3036];
    } else if ((inicio == 52 && fim == 53) || (inicio == 53 && fim == 52)) {
      // Linha entre CON 32 -> CON 33
      return [con3233];
    } else if ((inicio == 0 && fim == 26) || (inicio == 26 && fim == 0)) {
      // Linha entre CON 4 (ADMINISTRATIVO) -> CON 6
      return [con0406];
    } else if ((inicio == 46 && fim == 122) || (inicio == 122 && fim == 46)) {
      // CON 26 -> BLOCO XXIB
      return [con26XXIB];
    } else if ((inicio == 33 && fim == 121) || (inicio == 121 && fim == 33)) {
      // CON 13 -> BLOCO XXIA
      return [con13XXIA];
    } else if ((inicio == 32 && fim == 3) || (inicio == 3 && fim == 32)) {
      // CON 12 -> BLOCO ESTUDANTE
      return [con12ESTUD];
    } else if ((inicio == 53 && fim == 3) || (inicio == 3 && fim == 53)) {
      // CON 33 -> BLOCO ESTUDANTE
      return [con33ESTUD];
    } else if ((inicio == 61 && fim == 163) || (inicio == 163 && fim == 61)) {
      // CON 41 -> N/O
      return [con41NO];
    } else if ((inicio == 83 && fim == 163) || (inicio == 163 && fim == 83)) {
      // CON 63 -> N/O
      return [con63NO];
    } else if ((inicio == 81 && fim == 54) || (inicio == 54 && fim == 81)) {
      // CON 61 -> CON 34
      return [con6134];
    } else if ((inicio == 63 && fim == 12) || (inicio == 12 && fim == 63)) {
      // CON 43 -> BLOCO K
      return [con43K];
    } else if ((inicio == 63 && fim == 14) || (inicio == 14 && fim == 63)) {
      // CON 43 -> BLOCO M
      return [con43M];
    } else if ((inicio == 80 && fim == 14) || (inicio == 14 && fim == 80)) {
      // CON 60 -> BLOCO M
      return [con60M];
    } else if ((inicio == 80 && fim == 13) || (inicio == 13 && fim == 80)) {
      // CON 60 -> BLOCO L
      return [con60L];
    } else if ((inicio == 64 && fim == 11) || (inicio == 11 && fim == 64)) {
      // CON 44 -> BLOCO J
      return [con44J];
    } else if ((inicio == 79 && fim == 11) || (inicio == 11 && fim == 79)) {
      // CON 59 -> BLOCO J
      return [con59J];
    } else if ((inicio == 78 && fim == 10) || (inicio == 10 && fim == 78)) {
      // CON 58 -> BLOCO I
      return [con58I];
    } else if ((inicio == 65 && fim == 8) || (inicio == 8 && fim == 65)) {
      // CON 45 -> BLOCO G
      return [con45G];
    } else if ((inicio == 66 && fim == 9) || (inicio == 9 && fim == 66)) {
      // CON 46 -> BLOCO H
      return [con46H];
    } else if ((inicio == 77 && fim == 9) || (inicio == 9 && fim == 77)) {
      // CON 57 -> BLOCO H
      return [con57H];
    } else if ((inicio == 74 && fim == 6) || (inicio == 6 && fim == 74)) {
      // CON 54 -> BLOCO E
      return [con54E];
    } else if ((inicio == 74 && fim == 7) || (inicio == 7 && fim == 74)) {
      // CON 54 -> BLOCO F
      return [con54F];
    } else if ((inicio == 68 && fim == 126) || (inicio == 126 && fim == 68)) {
      // CON 48 -> BLOCO ARQ
      return [con48ARQ];
    } else if ((inicio == 69 && fim == 126) || (inicio == 126 && fim == 69)) {
      // CON 49 -> BLOCO ARQ
      return [con49ARQ];
    } else if ((inicio == 72 && fim == 5) || (inicio == 5 && fim == 72)) {
      // CON 52 -> BLOCO B
      return [con52B1, con52B2];
    } else if ((inicio == 69 && fim == 5) || (inicio == 5 && fim == 69)) {
      // CON 49 -> BLOCO B
      return [con49B];
    } else if ((inicio == 71 && fim == 4) || (inicio == 4 && fim == 71)) {
      // CON 51 -> BLOCO C
      return [con51C1, con51C2];
    } else if ((inicio == 59 && fim == 15) || (inicio == 15 && fim == 59)) {
      // CON 39 -> BLOCO P
      return [con39P];
    } else if ((inicio == 163 && fim == 15) || (inicio == 15 && fim == 163)) {
      // CON 40 -> BLOCO P
      return [con40P];
    } else if ((inicio == 86 && fim == 26) || (inicio == 26 && fim == 86)) {
      // CON 66 -> CON 6
      return [con6606];
    } else if ((inicio == 165 && fim == 121) || (inicio == 121 && fim == 165)) {
      // XXIA -> CON 132
      return [con132XXIA];
    } else if ((inicio == 165 && fim == 123) || (inicio == 123 && fim == 165)) {
      // XXIC -> CON 132
      return [con132XXIC];
    } else if ((inicio == 165 && fim == 122) || (inicio == 122 && fim == 165)) {
      // XXIB -> CON 132
      return [con132XXIB];
    } else if ((inicio == 165 && fim == 164) || (inicio == 164 && fim == 165)) {
      // CON 132 -> CON 132
      return [con131132];
    } else if ((inicio == 55 && fim == 165) || (inicio == 165 && fim == 55)) {
      // CON 35 -> CON 132
      return [con35132];
    } else if ((inicio == 57 && fim == 125) || (inicio == 125 && fim == 57)) {
      // CON 37 -> BLOCO Z
      return [con37Z1, con37Z2];
    } else if ((inicio == 56 && fim == 125) || (inicio == 125 && fim == 56)) {
      // CON 36 -> BLOCO Z
      return [con36Z1, con36Z2];
    } else if ((inicio == 166 && fim == 6) || (inicio == 6 && fim == 166)) {
      // CON 133 -> BLOCO E
      return [con133E];
    } else if ((inicio == 166 && fim == 68) || (inicio == 68 && fim == 166)) {
      // CON 133 -> CON 48
      return [con48133];
    } else if ((inicio == 166 && fim == 67) || (inicio == 67 && fim == 166)) {
      // CON 133 -> CON 48
      return [con47133];
    } else if ((inicio == 28 && fim == 87) || (inicio == 87 && fim == 28)) {
      // CON 8 -> CON 67
      return [con8671, con8672];
    } else if ((inicio == 4 && fim == 87) || (inicio == 87 && fim == 4)) {
      // CON 67 -> BLOCO C
      return [con67C];
    }
    return [];
  }
}

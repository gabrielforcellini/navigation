import 'package:flutter/material.dart';

class LocationIndicator extends StatelessWidget {
  final String? ssid;
  final double screenWidth;
  final double screenHeight;

  const LocationIndicator(
      {super.key,
      required this.ssid,
      required this.screenWidth,
      required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, double.infinity),
      painter: LocationIndicatorPainter(
          ssid: ssid, screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }
}

class LocationIndicatorPainter extends CustomPainter {
  String? ssid;
  final double screenWidth;
  final double screenHeight;
  Offset positionMock = const Offset(140, 430);

  LocationIndicatorPainter(
      {required this.ssid,
      required this.screenWidth,
      required this.screenHeight});

  Offset? _calculatePositionFromWifi(String? ssid) {
    print("ssid: $ssid");
    if (ssid == null || ssid == 'Nome desconhecido') {
      return null;
    }

    if (ssid == 'b4:2d:56:ec:36:a1') {
      // XXIA ANDAR 2
      return const Offset(135, 500);
    } else if (ssid == 'd8:84:66:d6:f9:29') {
      // XXIA TERREO
      return const Offset(135, 500);
    } else if (ssid == 'b4:2d:56:f0:ef:e1') {
      // Entre XXIA e ESTUDANTES
      return const Offset(140, 430);
    } else if (ssid == 'b4:2d:56:f0:ed:41') {
      // Bloco BIBLIOTECA
      return const Offset(135, 365);
    } else if (ssid == 'd8:84:66:d6:b3:f9') {
      // Bloco BIBLIOTECA
      return const Offset(135, 310);
    } else if (ssid == 'd8:84:66:d6:b2:49') {
      // Bloco ADMINISTRATIVO
      return const Offset(135, 235);
    } else if (ssid == 'AndroidWifi') {
      // Apenas para testes
      return const Offset(200, 400);
    } else if (ssid == '30:1f:48:0b:3b:08') {
      // Apenas para testes
      return const Offset(300, 400);
    }
    return null;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (ssid == null) return;

    Offset? position = _calculatePositionFromWifi(ssid);

    if (position == null) return;

    final double circleRadius = size.width * 0.02;
    final double outerRingRadius = size.width * 0.025;

    final Paint circlePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    // Desenha o círculo central
    canvas.drawCircle(
      position,
      circleRadius,
      circlePaint,
    );

    final Paint ringPaint = Paint()
      ..color = Colors.blue.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;

    // Desenha o anel externo
    canvas.drawCircle(
      position,
      outerRingRadius,
      ringPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Define como true para redesenhar se a posição mudar
  }
}

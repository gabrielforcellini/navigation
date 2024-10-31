import 'package:flutter/material.dart';

class LocationIndicator extends StatelessWidget {
  final Offset? position; // Posição dinâmica da bolinha

  const LocationIndicator({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(
          double.infinity, double.infinity), // Pintar no canvas completo
      painter: LocationIndicatorPainter(position: position),
    );
  }
}

class LocationIndicatorPainter extends CustomPainter {
  final Offset? position;

  LocationIndicatorPainter({required this.position});

  @override
  void paint(Canvas canvas, Size size) {
    // Verifica se a posição é nula; se for, não desenha nada
    if (position == null) return;

    final double circleRadius = size.width * 0.02; // Tamanho do círculo central
    final double outerRingRadius =
        size.width * 0.025; // Tamanho do anel externo

    // Definindo o pincel para o círculo central
    final Paint circlePaint = Paint()
      ..color = Colors.blue // Cor do círculo central
      ..style = PaintingStyle.fill; // Largura do anel

    // Desenha o círculo central na posição fornecida
    canvas.drawCircle(
      position!,
      circleRadius,
      circlePaint,
    );

    // Pincel para o anel externo
    final Paint ringPaint = Paint()
      ..color =
          Colors.blue.withOpacity(0.3) // Cor do anel externo com transparência
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25; // Largura do anel

    // Desenha o anel externo na mesma posição
    canvas.drawCircle(
      position!,
      outerRingRadius,
      ringPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Define como true para redesenhar se a posição mudar
  }
}

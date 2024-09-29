import 'package:flutter/material.dart';
import 'package:navigation/models/bloco.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.bloco, required this.color});

  final Bloco bloco;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      color: color,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Espaçamento interno
          child: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: FittedBox(
                      child: Text(bloco.subtitle,
                          style: Theme.of(context).textTheme.labelLarge)),
                ),
              ),
              const SizedBox(width: 8), // Espaçamento entre o avatar e o texto
              Expanded(
                child: Text(
                  bloco.title,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

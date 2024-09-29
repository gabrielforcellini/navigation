import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation/components/my_painter.dart';
import 'package:navigation/models/grafo.dart';
import 'package:navigation/pages/choose_where_go_toroute_page.dart';
import 'package:navigation/theme/theme.dart';
import 'package:navigation/theme/theme_provider.dart';
import 'package:navigation/utils/monta_grafo.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Provider.of<ThemeProvider>(context).getThemeData;

    navegar() async {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChooseWhereRoutePage()),
      );
    }

    final appBar = AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text(
        'Navigation',
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.navigation),
          onPressed: () async {
            await navegar();
          },
        ),
        IconButton(
          onPressed: () => {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme()
          },
          icon: Icon(theme == lightMode
              ? FontAwesomeIcons.solidMoon
              : FontAwesomeIcons.solidSun),
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Scaffold(
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: InteractiveViewer(
              maxScale: 6,
              child: SizedBox.expand(
                  child: Stack(
                children: [
                  Image.asset(
                    'assets/images/planta_baixa_copia2.png',
                    height: MediaQuery.of(context).size.height,
                  ),
                  CustomPaint(
                    size: const Size(300, 300), // Tamanho do widget CustomPaint
                    painter: MyPainter(),
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation),
        onPressed: () => calcula(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

calcula() {
  Grafo campus = Grafo(163);
  MontaGrafos builder = MontaGrafos();

  builder.montaArestas(campus);
  for (int bloco in campus.caminhoMinimo(0, 121)) {
    print('bloco: $bloco');
  }
}

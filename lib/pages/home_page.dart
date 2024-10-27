import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation/components/my_painter.dart';
import 'package:navigation/models/bloco.dart';
import 'package:navigation/models/grafo.dart';
import 'package:navigation/models/wifi_info.dart';
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
  Bloco? blocoIni;
  Bloco? blocoFim;
  List<int> caminho = [];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Provider.of<ThemeProvider>(context).getThemeData;

    navegar() async {
      final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WifiInfoScreen()),
      );

      if (result != null) {
        setState(() {
          blocoIni = result['blocoIni'];
          blocoFim = result['blocoFim'];
        });
        setState(
          () {
            caminho = calcula(blocoIni!.id, blocoFim!.id);
          },
        );
      }
    }

    final appBar = AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text(
        'Navegação',
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
          backgroundColor: Colors.white,
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: InteractiveViewer(
              maxScale: 6,
              child: SizedBox.expand(
                  child: Stack(
                children: [
                  Image.asset(
                    'assets/images/planta_baixa.png',
                    height: MediaQuery.of(context).size.height,
                  ),
                  CustomPaint(
                    size: const Size(300, 300),
                    painter: MyPainter(caminho),
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation),
        onPressed: () => navegar(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

calcula(int idBlocoInicial, int idBlocoFinal) {
  Grafo campus = Grafo(167);
  MontaGrafos builder = MontaGrafos();

  builder.montaArestas(campus);
  return campus.caminhoMinimo(idBlocoInicial, idBlocoFinal);
}

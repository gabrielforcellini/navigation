import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation/components/location_indicator_painter.dart';
import 'package:navigation/components/route_painter.dart';
import 'package:navigation/models/bloco.dart';
import 'package:navigation/models/grafo.dart';
import 'package:navigation/models/wifi.dart';
import 'package:navigation/pages/wifi_info_page.dart';
import 'package:navigation/pages/choose_where_go_toroute_page.dart';
import 'package:navigation/utils/monta_grafo.dart';
import 'package:navigation/utils/wifi_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Bloco? blocoIni;
  Bloco? blocoFim;
  List<int> caminho = [];
  Timer? _wifiCheckTimer;
  String? _currentWifiName;

  @override
  void initState() {
    super.initState();
    _fetchWifiInfo(); // Chama a função para obter informações do Wi-Fi
    _startWifiCheck(); // Inicia o timer para verificar mudanças de Wi-Fi
  }

  Future<void> _fetchWifiInfo() async {
    Wifi? wifiInfo = await getWifiInfo();
    if (wifiInfo != null) {
      setState(() {
        _currentWifiName = wifiInfo.ssid; // Salva o SSID atual
      });
    }
  }

  void _startWifiCheck() {
    _wifiCheckTimer =
        Timer.periodic(const Duration(seconds: 10), (timer) async {
      Wifi? wifiInfo = await getWifiInfo();
      if (wifiInfo != null && wifiInfo.ssid != _currentWifiName) {
        await _fetchWifiInfo(); // Atualiza a posição quando Wi-Fi muda
      }
    });
  }

  @override
  void dispose() {
    _wifiCheckTimer?.cancel(); // Cancela o timer ao descartar o widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Obtém a largura e altura da tela usando MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    navegar() async {
      final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChooseWhereRoutePage()),
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WifiInfoScreen()),
            );
          },
          icon: const Icon(FontAwesomeIcons.wifi),
        )
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
                    painter: RoutePainter(caminho, screenWidth, screenHeight),
                  ),
                  LocationIndicator(
                      ssid: _currentWifiName,
                      screenWidth: screenWidth,
                      screenHeight: screenHeight),
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

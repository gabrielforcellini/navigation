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
import 'package:navigation/ui/theme.dart';
import 'package:navigation/ui/theme_provider.dart';
import 'package:navigation/utils/monta_grafo.dart';
import 'package:navigation/utils/wifi_info.dart';
import 'package:network_info_plus/network_info_plus.dart';
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
  Offset? locationPosition;
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
      // Calcula a posição com base no SSID
      setState(() {
        //locationPosition = _calculatePositionFromWifi(wifiInfo.ssid);
        _currentWifiName = wifiInfo.ssid; // Salva o SSID atual
      });
    }
  }

  Offset? _calculatePositionFromWifi(String? wifiName) {
    if (wifiName == null || wifiName == 'Nome desconhecido') {
      return null;
    }

    // Exemplo de cálculo, você pode ajustar conforme a lógica necessária
    return Offset(
      wifiName.length * 10.0, // O cálculo da posição baseado no SSID
      300, // Posição fixa Y, ajuste conforme necessário
    );
  }

  void _startWifiCheck() {
    _wifiCheckTimer = Timer.periodic(const Duration(seconds: 5), (timer) async {
      Wifi? wifiInfo = await getWifiInfo();
      if (wifiInfo != null && wifiInfo.ssid != _currentWifiName) {
        print("Wi-Fi mudado de $_currentWifiName para: ${wifiInfo.ssid}");
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
    ThemeData theme = Provider.of<ThemeProvider>(context).getThemeData;

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
        // IconButton(
        //   onPressed: () => {
        //     Provider.of<ThemeProvider>(context, listen: false).toggleTheme()
        //   },
        //   icon: Icon(theme == lightMode
        //       ? FontAwesomeIcons.solidMoon
        //       : FontAwesomeIcons.solidSun),
        // ),
        // IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const WifiInfoScreen()),
        //     );
        //   },
        //   icon: const Icon(FontAwesomeIcons.wifi),
        // )
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
                    painter: RoutePainter(caminho),
                  ),
                  LocationIndicator(position: locationPosition),
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

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation/theme/theme.dart';
import 'package:navigation/theme/theme_provider.dart';
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

    Future<void> readQRCode() async {
      String code = await FlutterBarcodeScanner.scanBarcode(
          "#FFFFFF", "Cancelar", false, ScanMode.QR);
      if (code != '-1') {
        // colocar lógica aqui
      }
    }

    final appBar = AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text(
        'Navigation',
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.qr_code_scanner),
          onPressed: () async {
            await readQRCode();
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
            child: Image.asset(
              'assets/images/mapa.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
            ),
          ),
        ),
      ),
    );
  }
}

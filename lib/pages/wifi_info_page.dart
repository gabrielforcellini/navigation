import 'package:flutter/material.dart';
import 'package:navigation/utils/permissions.dart';
import 'package:network_info_plus/network_info_plus.dart';

class WifiInfoScreen extends StatefulWidget {
  const WifiInfoScreen({super.key});

  @override
  State<WifiInfoScreen> createState() => _WifiInfoScreenState();
}

class _WifiInfoScreenState extends State<WifiInfoScreen> {
  String? _wifiName = 'Unknown';
  String? _wifiBSSID = 'Unknown';
  String? _wifiIP = 'Unknown';

  @override
  void initState() {
    super.initState();
    _getWifiInfo();
  }

  Future<void> _getWifiInfo() async {
    String? wifiName;
    String? wifiBSSID;
    String? wifiIP;

    await requestPermission();
    if (!(await checkPermissionStatus())) {
      print("permissão negada.");
      return;
    }
    final info = NetworkInfo();

    try {
      wifiName = await info.getWifiName();
      wifiBSSID = await info.getWifiBSSID();
      wifiIP = await info.getWifiIP();
    } catch (e) {
      print('Erro ao obter informações de Wi-Fi: $e');
    }

    if (!mounted) return;

    setState(() {
      _wifiName = wifiName;
      _wifiBSSID = wifiBSSID;
      _wifiIP = wifiIP;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações do Wi-Fi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('SSID: $_wifiName'),
            Text('BSSID: $_wifiBSSID'),
            Text('Endereço IP: $_wifiIP'),
          ],
        ),
      ),
    );
  }
}

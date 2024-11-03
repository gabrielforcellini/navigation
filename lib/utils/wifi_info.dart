import 'package:navigation/models/wifi.dart';
import 'package:navigation/utils/permissions.dart';
import 'package:network_info_plus/network_info_plus.dart';

Future<Wifi?> getWifiInfo() async {
  // Solicita permissão para acessar informações de Wi-Fi
  await requestPermission();
  if (!(await checkPermissionStatus())) {
    print("Permissão negada.");
    return null; // Retorna null se a permissão for negada
  }
  print("Buscando informação do Wi-Fi.");

  final info = NetworkInfo();
  String? wifiName;
  String? wifiBSSID;
  String? wifiIP;

  try {
    wifiName = await info.getWifiName(); // Obter SSID
    wifiBSSID = await info.getWifiBSSID(); // Obter BSSID
    wifiIP = await info.getWifiIP(); // Obter IP

    // Garantir que valores nulos sejam substituídos por strings padrão
    wifiName = wifiName ?? "Nome desconhecido";
    wifiBSSID = wifiBSSID ?? "BSSID desconhecido";
    wifiIP = wifiIP ?? "IP desconhecido";

    // Retorna a instância da classe Wifi
    return Wifi(ssid: wifiName, bssid: wifiBSSID, ip: wifiIP);
  } catch (e) {
    print('Erro ao obter informações de Wi-Fi: $e');
    return null; // Retorna null em caso de erro
  }
}

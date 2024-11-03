class Wifi {
  final String ssid;
  final String bssid;
  final String ip;

  Wifi({
    required this.ssid,
    required this.bssid, // MAC
    required this.ip,
  });
}

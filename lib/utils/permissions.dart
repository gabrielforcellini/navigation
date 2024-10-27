import 'package:permission_handler/permission_handler.dart';

Future<bool> checkPermissionStatus() async {
  const permission = Permission.location;

  return await permission.status.isGranted;
}

Future<void> requestPermission() async {
  const permission = Permission.location;

  if (await permission.isDenied) {
    await permission.request();
  }
}

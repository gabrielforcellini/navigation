import 'package:flutter/material.dart';
import 'package:navigation/ui/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
import 'package:flutter/services.dart';

main() => {
      WidgetsFlutterBinding.ensureInitialized(),
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]).then((_) {
        runApp(ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          child: const NavigationApp(),
        ));
      })
    };

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).getThemeData,
    );
  }
}

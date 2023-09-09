import 'package:flutter/material.dart';
import 'package:info_app/pages/menu_page.dart';
import 'package:info_app/pages/splash_screen.dart';
import 'package:info_app/utils/MyRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.menu,
      routes: {
        MyRoutes.splash : (context) =>const SplashScreen(),
         MyRoutes.menu : (context) =>const MenuPage(),
      },
    );
  }
}

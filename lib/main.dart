import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:info_app/pages/login.dart';
import 'package:info_app/pages/menu_page.dart';
import 'package:info_app/pages/signUp.dart';
import 'package:info_app/pages/splash_screen.dart';
import 'package:info_app/utils/MyRoutes.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.signUp,
      routes: {
        MyRoutes.splash : (context) =>const SplashScreen(),
         MyRoutes.menu : (context) =>const MenuPage(),
         MyRoutes.login : (context) =>const LoginScreen(),
         MyRoutes.signUp : (context) =>const SignUpScreen(),
      },
    );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:info_app/utils/MyRoutes.dart';
import 'package:velocity_x/velocity_x.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=> Navigator.pushNamed(context, MyRoutes.menu)
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 160),
        child: Column(
          children: [
            const ClipRRect(
              child: Image(image: AssetImage("assets/images/splash_image.png"),
              fit: BoxFit.cover,
              ),
            ),
             const SizedBox(height: 20,),
            "Pelfix E-Learning".text.bold.italic.xl3.color(Colors.deepPurple).make(),
            const SizedBox(height: 30,),
            const SpinKitCircle(
              size: 60,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}

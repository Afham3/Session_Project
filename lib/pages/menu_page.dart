import 'package:flutter/material.dart';
import 'package:info_app/pages/login.dart';
import 'package:info_app/pages/signUp.dart';
import 'package:velocity_x/velocity_x.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash_image.png"),
              fit: BoxFit.cover,
            )
          ),
       child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Stack(
           children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                       },
                       child: Container(
                         height: 50,
                         width: 100,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.black,
                         ),
                         child: Text("Login",style: const TextStyle(
                           color: Colors.yellow,
                           fontSize: 20,
                         ),),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                       },
                       child: Container(
                         height: 50,
                         width: 100,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.black,
                         ),
                         child: Text("SignUp",style: const TextStyle(
                           color: Colors.yellow,
                           fontSize: 20,
                         ),),
                       ),
                     ),
                   ],
                 ),
               ],
             )
           ],
         ),
       )
   );
  }
}

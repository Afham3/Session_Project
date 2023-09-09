import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;
  loginCall(BuildContext context)
  {
    if(_formkey.currentState!.validate())
      {
        auth.signInWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString());
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: emailController,
                decoration:  InputDecoration(
                  hintText: "Gmail",
                  fillColor: Colors.white70,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value)
                {
                  if(value!.isEmpty){
                    return "Please enter email";
                  }
                  else
                    {
                      return null;
                    }
                },
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: passwordController,
                decoration:  InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.white70,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value)
                {
                  if(value!.isEmpty){
                    return "Please enter password";
                  }
                  else if(value.length<6)
                    {
                      return "Password should be at least 6-digits";
                    }
                  else
                  {
                    return null;
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {

                },
                    child: const Text("forgot password",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      decoration: TextDecoration.underline,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),)
                )
              ],
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () => loginCall(context),
              child: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text("Login", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

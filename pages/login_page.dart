// ignore_for_file: deprecated_member_use, use_build_context_synchronously, no_leading_underscores_for_local_identifiers

import '../components/my_button.dart';
import '/components/my_textfield.dart';
import 'package:e_comm_food/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
//import 'home_page.dart';

class LoginPage extends StatefulWidget{

  final void Function()? onTap;


  const LoginPage({super.key, required this.onTap,});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController =TextEditingController();
  final passwordController =TextEditingController();

  
  
  //login method
  void login() async{
    //get instance of auth service
    final _authService=AuthService();

    //try sign in
    try{
      await _authService.signInWithEmailPassword(
        emailController.text, passwordController.text,);
    }

    //display any errors
    catch(e){
      showDialog(context: context,
       builder: (context) => AlertDialog(
        title: Text(e.toString()),
       ),
       );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            //logo
            
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
            Text("Food Delivery App",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            ),

            const SizedBox(height: 25),

        
            //email textfile
            MyTextField(
              controller: emailController,
              hintText: "Email", 
              obscureText: false,
              ),

              const SizedBox(height: 10),
        
            //password
            MyTextField(
              controller: passwordController,
              hintText: "Password", 
              obscureText: true,
              ),

              const SizedBox(height: 10),
            //sing in button
            MyButton(
              onTap: login,
              text: "Login",
              
            ),

            const SizedBox(height: 10),

            //Register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Not a member ?",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
              const SizedBox(width: 4),

              GestureDetector(
                onTap: widget.onTap ,
                child: Text("Register Now",
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                ),
                
                ),
              ),
            ],)

            
          ],
        ),
      ),
    );
  }
}
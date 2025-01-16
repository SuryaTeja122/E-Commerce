// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:e_comm_food/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {

  final void Function()? onTap;

  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController =TextEditingController();

  final passwordController =TextEditingController();

  final confirmPasswordController =TextEditingController();

  //register method
  void register() async{
    //get auth service
    final authService =AuthService();

    //check if paswrd matches
    if(passwordController.text == confirmPasswordController.text){
      // try creating user

      try{
        await authService.signUpWithEmailPassword(
          emailController.text, 
          passwordController.text,);
      }

      catch(e){
        showDialog(
          context: context, 
          builder: (context)=> AlertDialog(
            title: Text(e.toString()),
        ),);
      }
    }

    //if passwords dont match => show error
    else{
      showDialog(
        context: context, 
        builder: (context)=>const AlertDialog(
          title: Text("Password Don't match"),
        ),);
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
            //logo
            Icon(Icons.lock_open_rounded,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
            Text("Let's Create an account for you",
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
            
            //confirm password
            MyTextField(
              controller: confirmPasswordController,
              hintText: "Confirm Password", 
              obscureText: true,
              ),

              const SizedBox(height: 10),
            //sing up button
            MyButton(
              text: "Sign Up",
              onTap: register,
            ),

              const SizedBox(height: 10),

            // already have account ? Login Here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Already have an Account ?",
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
              const SizedBox(width: 4),

              GestureDetector(
                onTap: widget.onTap ,
                child: Text("Login Now",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
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
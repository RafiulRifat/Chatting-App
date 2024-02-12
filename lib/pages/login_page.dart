import 'package:flutter/material.dart';
import 'package:kotha_barta/services/auth/auth_service.dart';
import 'package:kotha_barta/components/my_button.dart';
import 'package:kotha_barta/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

  //email & Password text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;
  
  LoginPage({
    super.key,
    required this.onTap,
    });

  //Login method
  void login(BuildContext context) async {
    //auth service
    final authService = AuthService();

    //try login
    try{
      await authService.signInWithEmailPassword(
        _emailController.text,
        _pwController.text,
        );
    }

    //cath any errors
    catch (e) {
      showDialog(
        context: context, 
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
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.tertiary,
          ),

          const SizedBox(height: 30),

          //welcome back message
          Text(
            "Black CaT আপনাকে স্বাগতম!!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Welcome to Black CaT!!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // email textfield
          MyTextField(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
          ),
          const SizedBox(height: 10),

          //password textfield
          MyTextField(
            hintText: "Password",
            obscureText: true,
            controller: _pwController,
          ),
          const SizedBox(height: 20),

          //login button
          MyButton(
            text: "Login",
            onTap: () => login(context),
          ),
          const SizedBox(height: 20),

          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member? ",
                style: 
                  TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Register now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
          ],
        )
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:kotha_barta/services/auth/auth_service.dart';
import 'package:kotha_barta/components/my_button.dart';
import 'package:kotha_barta/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  //tap to go to login page
  final void Function()? onTap;
  
  RegisterPage({
    super.key,
    required this.onTap,
    });

  //register method
  void register(BuildContext context) {
    // get auth service
    final _auth = AuthService();

    // password match hoile user create korbo
    if(_pwController.text == _confirmPwController.text) {
      try {
        _auth.signUpWithEmailPassword(
          _emailController.text, 
          _pwController.text,
        );
      } catch (e) {
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    // jodi password na match kore -> tahole user k eta fix korte bolbo.

    else {
      showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(
              "Passwords don't match!",
              style: TextStyle(color: Theme.of(context).colorScheme.primary,),
              ),
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
            "শুরু হোক Black CaT বার্তা!!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            "Let's Create an account!!",
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
          const SizedBox(height: 10),

          //Confirm password textfield
          MyTextField(
            hintText: "Confirm Password",
            obscureText: true,
            controller: _confirmPwController,
          ),
          const SizedBox(height: 20),

          //login button
          MyButton(
            text: "Register",
            onTap: () => register(context),
          ),
          const SizedBox(height: 20),

          //register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: 
                  TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Login now",
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
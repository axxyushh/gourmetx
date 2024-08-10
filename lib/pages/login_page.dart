import 'package:flutter/material.dart';
import 'package:gourmetx/components/button.dart';
import 'package:gourmetx/components/textfield.dart';
import 'package:gourmetx/pages/home_page.dart';
import 'package:gourmetx/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap,
  });
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() async{

    final _authService = AuthService();

    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }

    catch(e)
    {
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
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(
              height: 25,
            ),

            //message , app slogan
            Text(
              "Welcome to Dine Delight!",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //Email textfield
            MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false),

            SizedBox(
              height: 25.0,
            ),

            // Password textfield
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),

            SizedBox(
              height: 25.0,
            ),

            //Sign in Button
            MyButton(onTap: login, text: "Sign In"),

            SizedBox(
              height: 25,
            ),

            //Not a User? Register Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not an User?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

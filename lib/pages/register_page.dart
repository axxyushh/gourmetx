import 'package:flutter/material.dart';
import 'package:gourmetx/components/button.dart';
import 'package:gourmetx/components/textfield.dart';
import 'package:gourmetx/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void register() async {
    // Get Auth Service
    final _authService = AuthService();

    // If password matches, create user
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpWithEmailPassword(emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              "Error",
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              e.toString(),
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black,
          ),
        );
      }
    } else {
      // Show error
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text(
            "Passwords don't match",
            style: TextStyle(color: Colors.red),
          ),
          backgroundColor: Colors.black,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),

              // Message, app slogan
              Text(
                "Join Us ASAP.",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),

              // Email textfield
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 25),

              // Password textfield
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),

              // Confirm Password textfield
              MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),

              // Sign Up Button
              MyButton(
                onTap: register,
                text: "Sign Up",
              ),
              const SizedBox(height: 25),

              // Already a User? Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already an User?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),

                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

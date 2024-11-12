import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gourmetx/pages/home_page.dart';
import 'login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          
          //User is logged in
           if(snapshot.hasData)
             {
               return const HomePage();
             }
          
          //User is Not logged in
          else
          {
              return const LoginOrRegister();
          }
        },
      ),
    );
  }
}

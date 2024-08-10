import 'package:flutter/material.dart';
import 'package:gourmetx/pages/login_page.dart';
import 'package:gourmetx/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:gourmetx/models/restaurant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gourmetx/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gourmetx/services/auth/auth_gate.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(providers: [
      //theme Provider
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),

      //Restaurant Provider
      ChangeNotifierProvider(
        create: (context) => Restaurant(),
      ),

    ],
      child:  const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

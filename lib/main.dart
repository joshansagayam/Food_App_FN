import 'package:flutter/material.dart';
import 'package:food_app/auth/login_or_register.dart';
import 'package:food_app/models/resturant.dart';
//import 'package:food_app/pages/registerpage.dart';
import 'package:food_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';
//import "pages/login_page.dart";

void main() {
  runApp(MultiProvider(
    providers: [
      //themeprovider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      //restarunt provider
      ChangeNotifierProvider(create: (context) => Resturant()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

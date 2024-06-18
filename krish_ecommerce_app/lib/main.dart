import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krish_ecommerce_app/pages/login/login_page.dart';
import 'package:krish_ecommerce_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pinkAccent,
          primary: const Color(0xffEF6CB3),
          background: const Color(0xffD9D9D9),
        ),
        textTheme: GoogleFonts.livvicTextTheme(),
        useMaterial3: true,
      ),
      home: const LogInPage(),
    );
  }
}

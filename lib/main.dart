import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:igstoo/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: LoginEcran(),
    );
  }
}

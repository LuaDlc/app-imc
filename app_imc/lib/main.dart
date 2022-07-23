import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_imc/main_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_onboarding/ui/loading_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krishi Mitra',
      home: LoadingScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.adventProTextTheme()),
    );
  }
}

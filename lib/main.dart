import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zzoop/views/screens/cateogires_screen.dart';
import 'package:zzoop/views/screens/splash_screeen.dart';

void main() {
  runApp(ZZOOP());
}

class ZZOOP extends StatelessWidget {
  const ZZOOP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white),
          textTheme: GoogleFonts.barlowTextTheme(Theme.of(context).textTheme)),
      home: CategoriesScreen(),
    );
  }
}

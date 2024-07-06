import 'package:flutter/material.dart';
import 'package:myapp/AboutScreen.dart';
import 'package:myapp/FilmScreen.dart';
import 'package:myapp/detail_film_screen.dart';
import 'package:myapp/home_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/film': (context) => ListFilmScreen()
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: HomeScreen(),
      ),
    );
  }
}

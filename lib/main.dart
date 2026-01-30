import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/list.dart';
import 'pages/grid.dart';
import 'pages/card.dart';
import 'pages/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/list': (context) => const ListPage(),
        '/grid': (context) => const GridPage(),
        '/card': (context) => const CardPage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

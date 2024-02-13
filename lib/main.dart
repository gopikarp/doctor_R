import 'package:doctor/screen/home.dart';
import 'package:doctor/screen/thirdscreen.dart';
import 'package:doctor/screen/second_screen.dart';
import 'package:doctor/screen/4.dart';
import 'package:flutter/material.dart';
import 'BottomAppBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final listScreen = [
    const Home(),
    const Third_screen(),
    const second_screen(),
    const four(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(),
          bodyMedium: TextStyle(),
        ).apply(
          bodyColor: const Color.fromARGB(255, 8, 63, 109),
        ),
      ),
      home: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (BuildContext context, int indexx, _) => listScreen[indexx],
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}

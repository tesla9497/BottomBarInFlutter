import 'package:flutter/material.dart';
import 'package:test/screens/bottomNavigation/bottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const BottomBar(),
    );
  }
}

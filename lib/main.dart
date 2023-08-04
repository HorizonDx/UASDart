import 'package:fix/MyHomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ujian Akhir Semester',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

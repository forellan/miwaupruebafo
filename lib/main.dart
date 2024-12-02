import 'package:flutter/material.dart';
import 'screens/bienvenida.dart';

void main() {
  runApp(MiwauApp());
}

class MiwauApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MIWAU',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Bienvenida(),
    );
  }
}

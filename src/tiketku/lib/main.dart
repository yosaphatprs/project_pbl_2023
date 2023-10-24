import 'package:flutter/material.dart';
import 'package:tiketku/pages/home.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => const HomePage(),
  }));
}

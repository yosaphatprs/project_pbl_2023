// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiketku/pages/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => const MyApp(),
  }));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tentang Tiketku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 2, 13, 69),
        title: Text('Tentang Tiketku'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Kebijakan Privasi'),
            onTap: () {
              // Navigasi ke halaman Kebijakan Privasi
            },
          ),
          ListTile(
            title: Text('Syarat dan Ketentuan'),
            onTap: () {
              // Navigasi ke halaman Syarat dan Ketentuan
            },
          ),
          ListTile(
            title: Text('Kontak Kami'),
            onTap: () {
              // Navigasi ke halaman Kontak Kami
            },
          ),
          ListTile(
            title: Text('Versi Aplikasi'),
            onTap: () {
              // Tampilkan versi aplikasi
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Versi Aplikasi'),
                    content: Text('1.0.0'), // Ganti dengan versi aktual aplikasi
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Tutup'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
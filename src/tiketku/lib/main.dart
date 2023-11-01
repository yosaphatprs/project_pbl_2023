// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiketku/pages/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: GoogleFonts.manrope().fontFamily),
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/':
          return PageTransition(
            child: const HomePage(),
            type: PageTransitionType.fade,
            childCurrent: const HomePage(),
          );
        case '/akun':
          return PageTransition(
              child: const MyApp(),
              type: PageTransitionType.leftToRightJoined,
              duration: const Duration(milliseconds: 400),
              childCurrent: const HomePage(),
              curve: Curves.easeOut);
        default:
          return MaterialPageRoute(builder: (context) => const MyApp());
      }
    },
    // routes: {
    //   '/': (context) => const HomePage(),
    //   '/tentang': (context) => const MyApp(),
    // },
  ));
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
      home: DashboardAkun(),
    );
  }
}

class DashboardAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Akun'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/profil.jpg'),
                  radius: 50,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Lek John',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildListItem('Pusat Bantuan', () {}),
                _buildListItem('Tentang', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                }),
                _buildListItem('Detail Akun', () {}),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    color:
                        Color(0xFFFF7A00), // Warna latar belakang untuk Logout
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white, // Warna teks untuk Logout
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(String title, void Function() onTap) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 13, 69),
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
                    content:
                        Text('1.0.0'), // Ganti dengan versi aktual aplikasi
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

// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiketku/pages/detail_akun.dart';
import 'package:tiketku/pages/detail_riwayat.dart';
import 'package:tiketku/pages/detail_transaksi.dart';
import 'package:tiketku/pages/ganti_password.dart';
import 'package:tiketku/pages/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiketku/pages/jadwal_kereta.dart';
import 'package:tiketku/pages/login_page.dart';
import 'package:tiketku/pages/pusat_bantuan.dart';
import 'package:tiketku/pages/riwayat_transaski.dart';
import 'package:tiketku/pages/scan_ktp.dart';
import 'package:tiketku/pages/tiket_page.dart';
import 'package:tiketku/pages/detail_tiket.dart';
import 'package:tiketku/widgets/bottom_navbar.dart';

import 'pages/dashboard_akun.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: GoogleFonts.manrope().fontFamily),
    initialRoute: '/login',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/login':
          return PageTransition(
              child: const MyStatefulWidget(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/register':
          return PageTransition(
              child: RegisterPage(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/':
          return PageTransition(
              child: const HomePage(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/tiket':
          return PageTransition(
              child: const TiketPage(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/akun':
          return PageTransition(
              child: DashboardAkun(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/riwayat':
          return PageTransition(
              child: const RiwayatTransaksiPage(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/jadwal_kereta':
          return PageTransition(
              child: const JadwalKereta(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/detail_transaksi':
          return PageTransition(
              child: const DetailTransaksi(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/detail_tiket':
          return PageTransition(
              child: const DetailTransaksi(),
              type: PageTransitionType.fade,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOut);
        case '/tentang':
          return PageTransition(
            child: AboutPage(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 400),
          );
        case '/detailRiwayat':
          return PageTransition(
            child: DetailRiwayatPage(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 400),
          );
        case '/detailAkun':
          return PageTransition(
            child: DetailAkun(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 400),
          );
        case '/pusatBantuan':
          return PageTransition(
            child: PusatBantuanPage(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 400),
          );
        case '/ubahSandi':
          return PageTransition(
            child: UbahKataSandiPage(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 400),
          );
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

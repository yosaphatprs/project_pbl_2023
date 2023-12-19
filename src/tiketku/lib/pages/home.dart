import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/carousel_header_widget.dart';
import '../widgets/home_tab_view.dart';
import '../widgets/kai_pay_poin_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var iklanCarousel = [
      'assets/beranda-iklan-1.png',
      'assets/beranda-iklan-2.png'
    ];

    const List<String> list = <String>[
      'Semua',
      'Eksekutif',
      'Bisnis',
      'Ekonomi'
    ];

    const List<String> penumpang = <String>[
      'Pilih',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
    ];

    const List<String> bayi = <String>[
      '0 Bayi',
      '1 Bayi',
      '2 Bayi',
      '3 Bayi',
      '4 Bayi',
      '5 Bayi',
      '6 Bayi',
      '7 Bayi',
      '8 Bayi',
      '9 Bayi',
    ];

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        body: SafeArea(
          child: Column(
            children: [
              const Image(image: AssetImage("assets/tiketku-header.png")),
              const SizedBox(height: 20.0),
              CarouselHeaderWidget(iklanCarousel: iklanCarousel),
              const KaiPayPoin(),
              const HomeTabView(list: list, penumpang: penumpang, bayi: bayi)
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavbar(
          title: 'Beranda',
        ));
  }
}

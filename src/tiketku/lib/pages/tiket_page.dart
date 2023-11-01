import 'package:flutter/material.dart';
import 'package:tiketku/widgets/bottom_navbar.dart';

class TiketPage extends StatelessWidget {
  const TiketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        body: SafeArea(
          child: Column(
            children: [Text("Tiket")],
          ),
        ),
        bottomNavigationBar: BottomNavbar(
          title: 'Tiket',
        ));
  }
}

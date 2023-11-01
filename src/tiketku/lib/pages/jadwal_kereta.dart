import 'package:flutter/material.dart';

class JadwalKereta extends StatelessWidget {
  const JadwalKereta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Kereta"),
      ),
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      body: SafeArea(
        child: Column(
          children: [Text("Jadwal")],
        ),
      ),
    );
  }
}

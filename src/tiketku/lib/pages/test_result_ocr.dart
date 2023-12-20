import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String result;
  const ResultScreen(this.result, {super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    String nik = widget.result.substring(0, 16);
    String nama = widget.result.substring(17);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [Text('NIK: $nik'), Text('Nama: $nama')],
          )),
    );
  }
}

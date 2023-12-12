import 'package:flutter/material.dart';

class UbahKataSandiPage extends StatelessWidget {
  const UbahKataSandiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GANTI KATA SANDI',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView( // <-- Wrap the widget in a SingleChildScrollView
          child: Column(
            children: [
              UbahSandiBaru(),
              ContainerButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class UbahSandiBaru extends StatelessWidget {
  const UbahSandiBaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubah Kata Sandi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kata Sandi Baru',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Kata Sandi Baru',
                hintText: 'Masukkan kata sandi baru Anda',
              ),
            ),
            // SizedBox(height: 16),
            Text(
              'Konfirmasi Kata Sandi Baru',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Konfirmasi Kata Sandi Baru',
                hintText: 'Masukkan ulang kata sandi baru Anda',
              ),
            ),
            // SizedBox(height: 16),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton(
            //       onPressed: () {
            //         // Aksi saat tombol simpan ditekan
            //       },
            //       child: Text('Simpan'),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
            child: Container(
              margin: EdgeInsets.only(top: 30),
              height: 45, // <-- Adjust height
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: Center(
                child: Text(
                  'Ubah',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15, // <-- Adjust font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

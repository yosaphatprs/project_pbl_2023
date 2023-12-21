import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: TiketDetailPage(),
    ),
  );
}

class TiketDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Tiket',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Tiket KA - XXXXXXX01',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Spacer atau SizedBox untuk memberi jarak antar teks
            Center(
              child: Text('ML - BL(Kertanegara/120)'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildText('Nama', 'John Doe'),
                  buildText('NIK', '2141720031'),
                  buildText('Tipe Penumpang', 'Umum'),
                  buildText('No Tempat Duduk', 'EKO-5 / 20D'),
                  SizedBox(height: 40),
                  buildDepartureArrival(),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implementasi fungsi untuk mencetak tiket
                  // Misalnya, panggil fungsi cetakTiket() di sini
                  cetakTiket(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: Text('Cetak Tiket'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk mencetak tiket dan menampilkan dialog
  void cetakTiket(BuildContext context) {
    // Implementasi logika pencetakan tiket
    // Misalnya, tampilkan pesan bahwa tiket telah dicetak
    print('Tiket berhasil dicetak!');

    // Tampilkan dialog dengan pesan cetak tiket
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cetak Tiket'),
          content: Text('Tiket berhasil dicetak!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget buildText(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(content),
        SizedBox(height: 10),
      ],
    );
  }

  Widget buildDepartureArrival() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildDeparture(),
        SizedBox(width: 16),
        Spacer(), // Spacer untuk memberikan ruang di antara teks dan panah
        Icon(
          Icons.arrow_forward,
          color: Colors.black, // Sesuaikan dengan warna yang diinginkan
        ),
        Spacer(),
        SizedBox(width: 16),
        buildArrival(),
      ],
    );
  }

  Widget buildDeparture() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Berangkat',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text('Malang(ML)\n29 Oktober 2023\n08.00 WIB'),
        ],
      ),
    );
  }

  Widget buildArrival() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Perkiraan Tiba',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text('Blitar(BL)\n29 Oktober 2023\n09.29'),
        ],
      ),
    );
  }
}

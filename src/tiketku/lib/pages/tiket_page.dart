import 'package:flutter/material.dart';
import 'package:tiketku/widgets/bottom_navbar.dart';

class TiketPage extends StatelessWidget {
  const TiketPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1B69B3),
          foregroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: 'Aktif'),
              Tab(text: 'Menunggu'),
            ],
          ),
          title: const Text('Tiket'),
        ),
        body: TabBarView(
          children: [
            _buildTicketOptions(context),
            _buildTicketOptions(context),
          ],
        ),
        bottomNavigationBar: const BottomNavbar(title: 'Tiket'),
      ),
    );
  }

  Widget _buildTicketOptions(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: Color(0xFF1B69B3),
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(text: 'KA ANTAR KOTA'),
              Tab(text: 'KA LOKAL'),
              Tab(text: 'LAYANAN'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildOptionContent('KA ANTAR KOTA'),
                _buildOptionContent('KA LOKAL'),
                _buildOptionContent('LAYANAN'),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 35,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF1B69B3),
            ),
            child: Center(
              child: Text(
                'CEK TIKET',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionContent(String optionText) {
  String imagePath = '';
  String description = '';

  if (optionText == 'KA ANTAR KOTA') {
    imagePath = 'assets/kota.png';
    description =
        'Kereta Api Antar Kota adalah pilihan yang tepat untuk perjalanan jarak jauh. Nikmati kenyamanan perjalanan dengan KA Antarkota kami.';
  } else if (optionText == 'KA LOKAL') {
    imagePath = 'assets/lokal.jpeg';
    description =
        'Kereta Api Lokal adalah solusi terbaik untuk perjalanan sehari-hari di dalam kota. Hemat waktu dan nyaman dengan KA Lokal kami.';
  } else if (optionText == 'LAYANAN') {
    imagePath = 'assets/layanan.jpg';
    description =
        'Layanan khusus untuk memenuhi kebutuhan perjalanan Anda. Dengan pelayanan yang prima, kami siap membantu membuat perjalanan Anda lebih istimewa.';
  }

  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16),
        Text(
          optionText,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          description,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        // SizedBox(height: 16),
        // ElevatedButton(
        //   onPressed: () {
        //     // Tindakan yang ingin Anda lakukan saat tombol ditekan
        //     print('Beli Tiket $optionText');
        //   },
        //   style: ElevatedButton.styleFrom(
        //     primary: Color(0xFF1B69B3),
        //     onPrimary: Colors.white,
        //   ),
        //   child: Text('Beli Tiket $optionText'),
        // ),
      ],
    ),
  );
}

}
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
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          'Isi konten untuk $optionText di sini',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

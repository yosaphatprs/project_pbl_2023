import 'package:flutter/material.dart';

class PusatBantuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pusat Bantuan'),
        backgroundColor: const Color.fromARGB(255, 2, 13, 69),
      ),
      body: ListView(
        children: [
          _header(),
          _footer(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pusat Bantuan',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Dapatkan bantuan tentang aplikasi ini.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _footer() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Kontak kami',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 16),
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

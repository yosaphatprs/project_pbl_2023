// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiketku/main.dart';
import 'package:tiketku/widgets/bottom_navbar.dart';

class DashboardAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Akun'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/profil.jpg'),
                  radius: 50,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Lek John',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildListItem('Pusat Bantuan', () {}),
                _buildListItem('Tentang', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                }),
                _buildListItem('Detail Akun', () {}),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    color:
                        Color(0xFFFF7A00), // Warna latar belakang untuk Logout
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white, // Warna teks untuk Logout
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(title: 'Akun'),
    );
  }

  Widget _buildListItem(String title, void Function() onTap) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}

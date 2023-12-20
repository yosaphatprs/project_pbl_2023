// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiketku/main.dart';
import 'package:tiketku/widgets/bottom_navbar.dart';

class DashboardAkun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard Akun',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 100,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/images/profil.jpg'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        width: 200,
                        height: 30,
                        // color: Colors.brown,
                        child: Text(
                          'Hai Lek John',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        width: 200,
                        height: 15,
                        // color: Colors.black,
                        child: Text(
                          'Premium Akun',
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 2,
                            color: Color.fromARGB(255, 125, 122, 122),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-3, -3),
                              blurRadius: 10,
                              spreadRadius: 1)
                        ])),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    margin: EdgeInsets.only(top: 30),
                    width: 350,
                    height: 150,
                    child: Column(
                      children: [
                        Container(
                            width: 350,
                            height: 50,
                            // color: Colors.blue,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/pusat_bantuan');
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Icon(Icons.help_outlined),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 30),
                                    width: 200,
                                    height: 50,
                                    child: Text(
                                      'Pusat Bantuan',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 50,
                                    height: 50,
                                    child: Icon(Icons.keyboard_arrow_right),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                            width: 350,
                            height: 50,
                            // color: Colors.blue,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/tentang');
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Icon(Icons.info),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 30),
                                    width: 200,
                                    height: 50,
                                    child: Text(
                                      'Tentang',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 50,
                                    height: 50,
                                    child: Icon(Icons.keyboard_arrow_right),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                            width: 350,
                            height: 50,
                            // color: Colors.blue,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/detail_akun');
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Icon(Icons.edit),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 30),
                                    width: 200,
                                    height: 50,
                                    child: Text(
                                      'Detail Akun',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    width: 50,
                                    height: 50,
                                    child: Icon(Icons.keyboard_arrow_right),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ))
              ],
            ),
            InkWell(
              onTap: () {
                _showLogoutConfirmation(context);
                //Navigator.of(context).pushNamed('/login');
              },
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 35,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbar(title: 'Akun'),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi'),
          content: Text('Apakah kamu yakin ingin Logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Tidak'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              child: Text('Ya'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildListItem(String title, void Function() onTap) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tiketku/widgets/bottom_navbar.dart';

class TiketPage extends StatelessWidget {
  const TiketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF1B69B3),
            foregroundColor: Colors.white,
            bottom: const TabBar(
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'Aktif'),
                Tab(text: 'Menunggu',),
              ],
            ),
            title: const Text('Tiket'),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        height: 30,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 5, 57, 105),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'KA ANTAR KOTA',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 208, 229, 246),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'KA LOKAL',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1B69B3),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 30,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 208, 229, 246),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'LAYANAN',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1B69B3),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      )
                    ],
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
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ),
                ],
              ),
              Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        height: 30,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 5, 57, 105),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'KA ANTAR KOTA',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 10),
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 208, 229, 246),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'KA LOKAL',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1B69B3),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 30,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 208, 229, 246),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'LAYANAN',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF1B69B3),
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      )
                    ],
                  ),
            ],
          ),
          bottomNavigationBar: const BottomNavbar(title: 'Tiket'),
        ),
      );
  }
}

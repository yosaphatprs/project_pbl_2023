// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tiketku/widgets/bottom_navbar.dart';

class RiwayatTransaksiPage extends StatelessWidget {
  const RiwayatTransaksiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: const BottomNavbar(title: 'Riwayat'),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Riwayat Transaksi',
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Tiket',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Layanan',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SafeArea(
                child: Column(
              children: [
                // _navigasiButton(),
                SizedBox(height: 16),
                KartuRiwayat(),
                KartuRiwayat(),
                KartuRiwayat(),
                KartuRiwayat(),
              ],
            )),
            SafeArea(
                child: Column(
              children: [],
            )),
          ],
        ),
      ),
    );
  }

  // Padding _navigasiButton() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20),
  //     child: Row(
  //       children: [
  //         ElevatedButton(
  //           onPressed: () {},
  //           child: const Text('Tiket'),
  //         ),
  //         SizedBox(width: 16),
  //         OutlinedButton(
  //           onPressed: () {},
  //           child: const Text('Layanan'),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

class KartuRiwayat extends StatelessWidget {
  const KartuRiwayat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/detailRiwayat');
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: SizedBox(
                  width: 362,
                  height: 137,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/kai_logo.png',
                            width: 36,
                          ),
                          Row(
                            children: [
                              Card(
                                  color: Color(0xFF00C41F),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Text(
                                      'Selesai',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 8),
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.train_outlined, size: 20),
                                Text(
                                  'Kode Pemesanan : GCD5DHO',
                                  style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 40),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, // Membuat ruang antara dua elemen
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Malang(ML)\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '10.45\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '8 Aug 2023',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Icon(Icons.arrow_forward,
                                      size: 20, color: Colors.black),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Bangil (BG)\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '09.01\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '20 Aug 2023',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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

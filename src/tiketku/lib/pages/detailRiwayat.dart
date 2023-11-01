import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailRiwayatPage extends StatelessWidget {
  const DetailRiwayatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Riwayat',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xffF5B490),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            kodePesan(),
            SizedBox(height: 15),
            DetailPerjalanan(),
            SizedBox(height: 15),
            DetailHarga(),
            SizedBox(height: 15),
            DaftarPenumpang(),
          ],
        ),
      ),
    );
  }
}

class kodePesan extends StatelessWidget {
  const kodePesan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Kode Pemesanan',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'XGDFWCG',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            child: Column(
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
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Detail Perjalanan',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DetailPerjalanan extends StatelessWidget {
  const DetailPerjalanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(9),
                child: SizedBox(
                  width: 362,
                  height: 137,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/kai_logo.png',
                        width: 36,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Penataran XXX (123)',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Ekononi (X)',
                                  style: TextStyle(fontSize: 11)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Center(
                        child: Text(
                          'Durasi 1h 20m',
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

class DetailHarga extends StatelessWidget {
  const DetailHarga({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(9),
                child: SizedBox(
                  width: 362,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Penataran XXX (123)',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Dewasa x 1\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Total Harga\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Rp 10.000\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 8,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Rp 10.000\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
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
          ],
        ));
  }
}

class DaftarPenumpang extends StatelessWidget{
  const DaftarPenumpang({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(9),
                child: SizedBox(
                  width: 362,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                         
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '1. JOHN DOE SCSBD\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'No ID\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '230xxxxxxxxxxxxx',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 9,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'EKO-2 /3A\n',
                                        style: TextStyle(
                                          color: Color(0xffFF7A00),
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Tipe Penumpang\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Umum',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.normal,
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
          ],
        ));
  }
}

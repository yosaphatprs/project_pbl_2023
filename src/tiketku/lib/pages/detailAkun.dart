import 'package:flutter/material.dart';

class DetailAkun extends StatelessWidget {
  const DetailAkun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Akun',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            NamaPengguna(),
            UbahEmail(),
            UbahKtp(),
            UbahDataPribadi(),
            ContainerButton(),
          ],
        ),
      ),
    );
  }
}

class NamaPengguna extends StatelessWidget {
  const NamaPengguna({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(20), // Set the border radius here
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  width: 369,
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
                                    text: 'Nama Lengkap\n',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
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
                                        text: 'JOHN XASJKN BBHNSN \n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.bold,
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

class UbahEmail extends StatelessWidget {
  const UbahEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(20), // Set the border radius here
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: SizedBox(
                  width: 364,
                  height: 57,
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
                                    text: 'E-Mail\n',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'xxxxxxxx@xmail.com',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  )
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
                                        text: 'UBAH \n',
                                        style: TextStyle(
                                          color: Color(0xFFFF7A00),
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.bold,
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

class UbahKtp extends StatelessWidget {
  const UbahKtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(20), // Set the border radius here
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: SizedBox(
                  width: 364,
                  height: 57,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Tipe ID\n',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
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
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'No ID \n',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.bold,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'UBAH\n',
                                        style: TextStyle(
                                          color: Color(0xFFFF7A00),
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.bold,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'KTP\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
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
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '321xxxxxxxxxxxxx \n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.bold,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '\n',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.bold,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
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

class UbahDataPribadi extends StatelessWidget {
  const UbahDataPribadi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(20), // Set the border radius here
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: SizedBox(
                  width: 369,
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
                                    text: 'Nama Lengkap\n',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'JOHN XASJKN BBHNSN \n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.bold,
                                      height: 0,
                                    ),
                                  ), // TextSpan(
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
                                        text: 'UBAH \n',
                                        style: TextStyle(
                                          color: Color(0xFFFF7A00),
                                          fontSize: 12,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.bold,
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

class ContainerButton extends StatelessWidget {
  const ContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          SizedBox(
            width: 364,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 102, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7), // Ganti nilai sesuai keinginan Anda
                    ),
                  ),
                  onPressed: () {
                    // Aksi saat tombol daftar ditekan
                  },
                  child: const Text('Keluar Akun',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 364,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:  Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7), // Ganti nilai sesuai keinginan Anda
                    ),
                  ),
                  onPressed: () {
                    // Aksi saat tombol daftar ditekan
                  },
                  child: const Text('Hapus Akun',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
           SizedBox(
            width: 364,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:  Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7), // Ganti nilai sesuai keinginan Anda
                    ),
                  ),
                  onPressed: () {
                    // Aksi saat tombol daftar ditekan
                  },
                  child: const Text('Ganti Sandi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

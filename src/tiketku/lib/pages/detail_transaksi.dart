import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';
import 'package:tiketku/pages/scan_ktp.dart';
import 'package:tiketku/widgets/primary_route_button.dart';

class DetailTransaksi extends StatefulWidget {
  final String result;
  const DetailTransaksi({super.key, this.result = ""});

  @override
  State<DetailTransaksi> createState() => _DetailTransaksiState();
}

class _DetailTransaksiState extends State<DetailTransaksi> {
  final TextEditingController _controllerNIK = TextEditingController();
  final TextEditingController _controllerNama = TextEditingController();
  var scanKtp = false;
  @override
  Widget build(BuildContext context) {
    if (widget.result == "") {
      _controllerNIK.text = "";
      _controllerNama.text = "";
    } else {
      String nik = widget.result.substring(0, 17);
      String nama = widget.result.substring(17);

      _controllerNIK.text = nik;
      _controllerNama.text = nama;
    }

    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          toolbarHeight: 49,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/jadwal_kereta');
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColor.primaryColor,
                      size: 24,
                    )),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Detail Transaksi",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ]),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 8),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color.fromARGB(255, 230, 230, 230),
                                    width: 2))),
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 12.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kereta Pergi",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "08:00 WIB, Minggu, 29 Okt 2023",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          ExpansionTile(
                            iconColor: AppColor.primaryColor,
                            collapsedIconColor: AppColor.primaryColor,
                            tilePadding: EdgeInsets.zero,
                            title: const Text(
                              'Kertanegara - Ekonomi (D)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Column(children: [
                                      Text("08:00"),
                                      Text("29 Okt"),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text("1j 29m"),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text("09:29"),
                                      Text("29 Okt")
                                    ]),
                                    const SizedBox(
                                      width: 48,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4.0),
                                          child: Image.asset(
                                              "assets/line_tiket_asset.png"),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 48,
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ML - Malang",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Stasiun Malang",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "Kertanegara (Eko.)",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Text(
                                          "BL - Blitar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Stasiun Blitar",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Data Pemesan E-Tiket",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("Nama"),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizedBox(
                                          width: 344,
                                          height: 36,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8,
                                                      top: 8,
                                                      bottom: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("No. Telp"),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizedBox(
                                          width: 344,
                                          height: 36,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8,
                                                      top: 8,
                                                      bottom: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("Email"),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizedBox(
                                          width: 344,
                                          height: 36,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8,
                                                      top: 8,
                                                      bottom: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Detail Penumpang 1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              InkWell(
                                onTap: () async {
                                  if (scanKtp == true) {
                                    await availableCameras().then((value) =>
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    ScanKTP(camera: value))));
                                  } else {
                                    setState(() {
                                      scanKtp = true;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.flip,
                                  color: scanKtp
                                      ? AppColor.primaryColor
                                      : Colors.grey,
                                  size: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                "|",
                                style: TextStyle(fontSize: 24),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              InkWell(
                                onTap: () {
                                  if (scanKtp == true) {
                                    setState(() {
                                      scanKtp = false;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.edit,
                                  color: scanKtp
                                      ? Colors.grey
                                      : AppColor.primaryColor,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("Nama"),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizedBox(
                                          width: 344,
                                          height: 36,
                                          child: TextField(
                                            controller: _controllerNama,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8,
                                                      top: 8,
                                                      bottom: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("NIK"),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        SizedBox(
                                          width: 344,
                                          height: 36,
                                          child: TextField(
                                            controller: _controllerNIK,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 8,
                                                      top: 8,
                                                      bottom: 8),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const PrimaryButton(
                              text: "Pesan", routeName: "detail_tiket")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

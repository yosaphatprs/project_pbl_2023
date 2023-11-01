import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';
import 'package:tiketku/pages/riwayatTransaski.dart';

class JadwalKereta extends StatefulWidget {
  const JadwalKereta({super.key});

  @override
  State<JadwalKereta> createState() => _JadwalKeretaState();
}

class _JadwalKeretaState extends State<JadwalKereta> {
  DateTime dt = DateTime.parse('2023-10-29');
  int _indexTab = 0;
  final List<int> _indexArray = [0, 1, 2, 3, 4, 5];

  void _updateTabIndex(int index) {
    setState(() {
      _indexTab = index;
    });
  }

  String _convertDay(int index) {
    switch (index) {
      case 1:
        return 'Senin';
      case 2:
        return 'Selasa';
      case 3:
        return 'Rabu';
      case 4:
        return 'Kamis';
      case 5:
        return 'Jumat';
      case 6:
        return 'Sabtu';
      case 7:
        return 'Minggu';
      default:
        return 'Error';
    }
  }

  String _convertMonth(int index) {
    switch (index) {
      case 1:
        return 'Januari';
      case 2:
        return 'Februari';
      case 3:
        return 'Maret';
      case 4:
        return 'April';
      case 5:
        return 'Mei';
      case 6:
        return 'Juni';
      case 7:
        return 'Juli';
      case 8:
        return 'Agustus';
      case 9:
        return 'September';
      case 10:
        return 'Oktober';
      case 11:
        return 'November';
      case 12:
        return 'Desember';
      default:
        return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.secondaryColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 49,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Malang (ML) - Blitar (BL)",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${_convertDay(dt.weekday)}, ${dt.day} ${_convertMonth(dt.month)} ${dt.year}",
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: 50,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: _indexArray.map((index) {
                      return DateTabTicketPage(
                          convertDay: _convertDay,
                          updateTabIndex: _updateTabIndex,
                          indexTab: index,
                          currentTabIndex: _indexTab,
                          dt: dt.add(Duration(days: (index))));
                    }).toList())),
            _indexTab == 0
                ? JadwalKeretaCard(dt: dt)
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                      child: Text("Belum tersedia jadwal"),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class JadwalKeretaCard extends StatelessWidget {
  const JadwalKeretaCard({
    super.key,
    required this.dt,
  });

  final DateTime dt;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 136,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/kai_logo.png"),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'KERTANEGARA',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.secondaryColor),
                            ),
                            Text(
                              "Ekonomi (D)",
                              style: TextStyle(
                                  fontSize: 9, color: Colors.grey[500]), //ubah
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Rp 12.0000.-',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.secondaryColor),
                            ),
                            Text("Tersedia",
                                style: TextStyle(
                                    color: Colors.green[400],
                                    fontSize: 9,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )
                      ]),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Malang (ML)"), Text("Blitar (BL)")],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("08:00"),
                      Icon(Icons.arrow_forward, size: 12),
                      Text("09:29")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${dt.day} Oct ${dt.year}"),
                      Text("Durasi 1j 29m"),
                      Text("${dt.day} Oct ${dt.year}")
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class DateTabTicketPage extends StatelessWidget {
  const DateTabTicketPage({
    super.key,
    required int indexTab,
    required this.dt,
    required this.updateTabIndex,
    required this.convertDay,
    required this.currentTabIndex,
  }) : _indexTab = indexTab;

  final String Function(int) convertDay;
  final ValueChanged<int> updateTabIndex;
  final int _indexTab;
  final DateTime dt;
  final int currentTabIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => updateTabIndex(_indexTab),
      splashColor: Colors.black,
      child: SizedBox(
        width: 115,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 65,
              height: 40,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: currentTabIndex == _indexTab
                        ? AppColor.primaryColor
                        : Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    convertDay(dt.weekday),
                    style: TextStyle(
                        fontSize: 8,
                        color: currentTabIndex == _indexTab
                            ? AppColor.primaryColor
                            : Colors.black), //ubah
                  ),
                  Text(
                    dt.day.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: currentTabIndex == _indexTab
                            ? AppColor.primaryColor
                            : Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

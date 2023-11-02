import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';
import '../widgets/date_tab_ticket_page.dart';
import '../widgets/jadwal_kereta_card.dart';
import '../widgets/jadwal_tiket_app_bar.dart';

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
        title: JadwalTiketAppBar(
            dt: dt, convertDay: _convertDay, convertMonth: _convertMonth),
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
                ? Expanded(
                    child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                    child: ListView(scrollDirection: Axis.vertical, children: [
                      JadwalKeretaCard(dt: dt),
                      const SizedBox(height: 8),
                      JadwalKeretaCard(dt: dt),
                      const SizedBox(height: 8),
                      JadwalKeretaCard(dt: dt),
                      const SizedBox(height: 8),
                      JadwalKeretaCard(dt: dt),
                      const SizedBox(height: 8),
                      JadwalKeretaCard(dt: dt),
                      const SizedBox(height: 8),
                      JadwalKeretaCard(dt: dt)
                    ]),
                  ))
                : const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Text("Belum tersedia jadwal"),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

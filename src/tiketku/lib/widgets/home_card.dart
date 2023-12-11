import 'package:flutter/material.dart';
import 'package:tiketku/pages/login_page.dart';
import 'drop_down_kelas_penumpang_home.dart';
import 'primary_route_button.dart';

// ignore: must_be_immutable
class HomeCard extends StatefulWidget {
  const HomeCard({
    super.key,
    required this.list,
    required this.penumpang,
    required this.bayi,
  });

  final List<String> list;
  final List<String> penumpang;
  final List<String> bayi;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  DateTime? dateTimeBerangkat;
  DateTime? dateTimePulang;
  final TextEditingController _controllerAsal = TextEditingController();
  final TextEditingController _controllerTujuan = TextEditingController();
  final TextEditingController _controllerDateBerangkat =
      TextEditingController();
  final TextEditingController _controllerDatePulang = TextEditingController();
  String? asal;
  String? tujuan;
  bool? isPP;
  bool isSwap = false;

  void _changeSwapStatus() {
    setState(() {
      print("Test SetState");
      isSwap = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      borderOnForeground: true,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text("Asal")),
              Expanded(
                child: InkWell(
                    child: const Icon(Icons.swap_horizontal_circle_outlined),
                    onTap: () {
                      _changeSwapStatus;
                      asal = _controllerAsal.text;
                      tujuan = _controllerTujuan.text;
                      _controllerAsal.text = tujuan!;
                      _controllerTujuan.text = asal!;
                    }),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Tujuan"),
                ],
              ))
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 125,
                    height: 10,
                    child: TextField(
                      controller: _controllerAsal,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          asal = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 125,
                    height: 10,
                    child: TextField(
                      controller: _controllerTujuan,
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: (value) {
                        setState(() {
                          tujuan = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 1, child: Text("Tgl. Berangkat")),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.toggle_off_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        "Pulang Pergi",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Tgl. Kembali",
                        style: TextStyle(
                            color: isPP == true ? Colors.black : Colors.grey),
                      ),
                    ],
                  ))
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 125,
                    height: 10,
                    child: TextField(
                        controller: _controllerDateBerangkat,
                        readOnly: true, // when true user cannot edit text
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2099),
                          ).then((date) {
                            _controllerDateBerangkat.text =
                                date.toString().substring(0, 10);
                            setState(() {
                              dateTimeBerangkat = date;
                            });
                          });
                        }),
                  ),
                  SizedBox(
                    width: 125,
                    height: 10,
                    child: TextField(
                        controller: _controllerDatePulang,
                        enabled: isPP == true ? true : false,
                        readOnly: true, // when true user cannot edit text
                        onTap: () {
                          if (isPP == true) {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2099),
                            ).then((date) {
                              _controllerDatePulang.text =
                                  date.toString().substring(0, 10);
                              setState(() {
                                dateTimePulang = date;
                              });
                            });
                          }
                        }),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Kelas Kereta"), Text("Penumpang")],
          ),
          DropDownKelasPenumpangHome(
              list: widget.list,
              penumpang: widget.penumpang,
              bayi: widget.bayi),
          const Row(
            children: [
              Text(
                "Penumpang bayi tidak mendapatkan kursi sendiri",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/jadwal_kereta');
            },
            child: const PrimaryButton(
              text: 'Cari',
              routeName: '/jadwal_kereta',
            ),
          )
        ]),
      ),
    );
  }
}

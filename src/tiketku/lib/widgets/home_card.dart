import 'package:flutter/material.dart';
import 'drop_down_kelas_penumpang_home.dart';
import 'primary_route_button.dart';

class HomeCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      borderOnForeground: true,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text("Asal")),
              Expanded(
                child: Icon(Icons.swap_horizontal_circle_outlined),
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
          const Column(
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
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 125,
                    height: 10,
                    child: TextField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Row(
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
                      Text("Tgl. Kembali"),
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
                        readOnly: true, // when true user cannot edit text
                        onTap: () async {
                          //when click we have to show the datepicker
                        }),
                  ),
                  SizedBox(
                    width: 125,
                    height: 10,
                    child: TextField(
                        readOnly: true, // when true user cannot edit text
                        onTap: () async {
                          //when click we have to show the datepicker
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
              list: list, penumpang: penumpang, bayi: bayi),
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

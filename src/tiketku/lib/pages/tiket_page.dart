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
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            bottom: const TabBar(
              labelColor: Colors.black,
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
                          color: Color.fromARGB(255, 208, 229, 246),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'KA Antar Kota',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
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
                            'KA Lokal',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
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
                            'Layanan',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
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
                      color: Colors.blue,
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
                          color: Color.fromARGB(255, 208, 229, 246),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'KA Antar Kota',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
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
                            'KA Lokal',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
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
                            'Layanan',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
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

import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';

class DetailTransaksi extends StatelessWidget {
  const DetailTransaksi({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [Text("Detail Transaksi")],
            ),
          ),
        ));
  }
}

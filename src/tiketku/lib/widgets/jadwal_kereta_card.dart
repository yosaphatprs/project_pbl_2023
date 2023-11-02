import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';

class JadwalKeretaCard extends StatelessWidget {
  const JadwalKeretaCard({
    super.key,
    required this.dt,
  });

  final DateTime dt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/detail_transaksi'),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 145,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/kai_logo.png"),
                ],
              ),
              const SizedBox(height: 2),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                    const SizedBox(height: 2),
                    Text(
                      "Ekonomi (D)",
                      style: TextStyle(
                          fontSize: 11, color: Colors.grey[500]), //ubah
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
                    const SizedBox(height: 2),
                    Text("Tersedia",
                        style: TextStyle(
                            color: Colors.green[400],
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ]),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Malang (ML)"), Text("Blitar (BL)")],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "08:00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.secondaryColor),
                      ),
                      Icon(Icons.arrow_forward, size: 14),
                      Text(
                        "09:29",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.secondaryColor),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${dt.day} Oct ${dt.year}",
                        style: const TextStyle(fontSize: 10),
                      ),
                      const Text("Durasi 1j 29m",
                          style: TextStyle(fontSize: 10)),
                      Text("${dt.day} Oct ${dt.year}",
                          style: const TextStyle(fontSize: 10))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

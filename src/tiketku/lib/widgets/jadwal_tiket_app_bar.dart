import 'package:flutter/material.dart';

class JadwalTiketAppBar extends StatelessWidget {
  const JadwalTiketAppBar({
    super.key,
    required this.dt,
    required this.convertDay,
    required this.convertMonth,
  });

  final String Function(int) convertDay;
  final String Function(int) convertMonth;

  final DateTime dt;

  @override
  Widget build(BuildContext context) {
    return Row(
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
              "${convertDay(dt.weekday)}, ${dt.day} ${convertMonth(dt.month)} ${dt.year}",
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

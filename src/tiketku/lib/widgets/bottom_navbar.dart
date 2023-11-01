import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/icons/icon-home-bar.png"),
              color: title == 'Beranda'
                  ? AppColor.secondaryColor
                  : const Color.fromARGB(255, 183, 183, 183),
            ),
            label: 'Beranda'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/icons/icon-tiket-bar.png"),
              color: title == 'Tiket'
                  ? AppColor.secondaryColor
                  : const Color.fromARGB(255, 183, 183, 183),
            ),
            label: 'Tiket'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/icons/icon-riwayat-bar.png"),
              color: title == 'Riwayat'
                  ? AppColor.secondaryColor
                  : const Color.fromARGB(255, 183, 183, 183),
            ),
            label: 'Riwayat'),
        BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/icons/icon-akun-bar.png"),
              color: title == 'Akun'
                  ? AppColor.secondaryColor
                  : const Color.fromARGB(255, 183, 183, 183),
            ),
            label: 'Akun'),
      ],
      backgroundColor: const Color.fromARGB(255, 217, 217, 217),
      unselectedItemColor: const Color.fromARGB(255, 183, 183, 183),
      selectedItemColor: Colors.black,
      selectedFontSize: 12,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, "/");
            break;
          case 1:
            Navigator.pushNamed(context, "/tiket");
            break;
          case 2:
            Navigator.pushNamed(context, "/riwayat");
            break;
          case 3:
            Navigator.pushNamed(context, "/akun");
            break;
        }
      },
    );
  }
}

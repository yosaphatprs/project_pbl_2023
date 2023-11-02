import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';

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

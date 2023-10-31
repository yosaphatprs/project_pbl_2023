import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';
import 'package:tiketku/widgets/home_card.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Column(
        children: [
          DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                const TabBar(tabs: [
                  Tab(
                      child: Text(
                    "KA Antar Kota",
                    style: TextStyle(color: AppColor.ternaryColor),
                  )),
                  Tab(
                      child: Text(
                    "KA Lokal",
                    style: TextStyle(color: AppColor.ternaryColor),
                  )),
                ]),
                SizedBox(
                  height: 330,
                  child: TabBarView(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: HomeCard(
                                list: list, penumpang: penumpang, bayi: bayi),
                          )
                        ],
                      ),
                    ),
                    const Text("KA Lokal"),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

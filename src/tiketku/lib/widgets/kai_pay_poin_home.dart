import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';

class KaiPayPoin extends StatelessWidget {
  const KaiPayPoin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        color: const Color.fromARGB(255, 217, 217, 217),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                child: const Column(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.qr_code_scanner,
                          size: 32,
                          color: AppColor.ternaryColor,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("KAI Pay",
                                    style: TextStyle(
                                        color: AppColor.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12))
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Rp. 100.000",
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Column(children: [
                  Row(
                    children: [
                      Icon(Icons.info, size: 34, color: AppColor.ternaryColor),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("MyPoin",
                                  style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12))
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "200",
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ]),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

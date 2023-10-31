import 'package:flutter/material.dart';

class DropDownKelasPenumpangHome extends StatelessWidget {
  const DropDownKelasPenumpangHome({
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 125,
          child: DropdownButton(
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 12),
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              // setState(() {
              //   dropdownValue = value!;
              // });
            },
            value: list[0],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 55,
              child: DropdownButton(
                items: penumpang.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 12),
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  // setState(() {
                  //   dropdownValue = value!;
                  // });
                },
                value: penumpang[0],
              ),
            ),
            const SizedBox(width: 15),
            DropdownButton(
              items: bayi.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                // setState(() {
                //   dropdownValue = value!;
                // });
              },
              value: bayi[0],
            ),
          ],
        ),
      ],
    );
  }
}

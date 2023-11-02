import 'package:flutter/material.dart';

class DropDownPenumpangLokal extends StatelessWidget {
  const DropDownPenumpangLokal({
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 312,
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
          ],
        ),
      ],
    );
  }
}

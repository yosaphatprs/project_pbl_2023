import 'package:flutter/material.dart';

class DropDownKelasPenumpangHome extends StatefulWidget {
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
  State<DropDownKelasPenumpangHome> createState() =>
      _DropDownKelasPenumpangHomeState();
}

class _DropDownKelasPenumpangHomeState
    extends State<DropDownKelasPenumpangHome> {
  String? kelas;
  String? penumpang;
  String? bayi;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 125,
          child: DropdownButton(
            items: widget.list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 12),
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                kelas = value;
              });
            },
            value: kelas ?? widget.list[0],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 55,
              child: DropdownButton(
                items: widget.penumpang
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(fontSize: 12),
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    penumpang = value;
                  });
                },
                value: penumpang ?? widget.penumpang[0],
              ),
            ),
            const SizedBox(width: 15),
            DropdownButton(
              items: widget.bayi.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  bayi = value;
                });
              },
              value: bayi ?? widget.bayi[0],
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tiketku/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
        ),
        onPressed: () {},
        child: const Text(
          'Cari',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PinkButton extends StatelessWidget {
  VoidCallback ontap;
  PinkButton({required this.ontap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 56,
        width: 341,
        decoration: BoxDecoration(
          color: Color(0xffED058C),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}

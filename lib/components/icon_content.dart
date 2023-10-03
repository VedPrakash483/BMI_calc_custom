import 'package:flutter/material.dart';
import 'constants.dart';

class malefemaleicons extends StatelessWidget {
  malefemaleicons({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        kspacingbox,
        Text(
          label,
          style: klabelTextStyle
        )
      ],
    );
  }
}
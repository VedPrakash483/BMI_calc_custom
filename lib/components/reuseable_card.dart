import 'package:flutter/material.dart';

enum genderType{
  male,
  female,
  none,
}
class reusableContainer extends StatelessWidget {
  reusableContainer({required this.colour, this.childWidget, this.onPress});
  final Color colour;
  final Widget? childWidget;
  final VoidCallback? onPress; //she used "final function> onPress;" that cant be used so used VoidCallback? or void Function().

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childWidget,
        height: 180,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colour,
        ),
      ),
    );
  }
}

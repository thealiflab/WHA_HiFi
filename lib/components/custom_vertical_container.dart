import 'package:flutter/material.dart';

class CustomVerticalContainer extends StatelessWidget {
  const CustomVerticalContainer({
    required this.childItem,
    required this.colorPref,
  });

  final Column childItem;
  final Color colorPref;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: colorPref,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 4.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        child: childItem,
      ),
    );
  }
}

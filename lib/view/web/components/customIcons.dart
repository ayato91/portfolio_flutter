import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      this.size = 27,
      this.color = Colors.green,
      this.isSelected = false,
      required this.icon});
  final bool isSelected;
  final IconData icon;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: isSelected ? color : Colors.white60,
    );
  }
}

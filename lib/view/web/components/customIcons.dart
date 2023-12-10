import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      this.size = 27,
      this.color = Colors.white60,
      required this.icon});
  final IconData icon;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}

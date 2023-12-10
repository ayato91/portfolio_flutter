import 'package:flutter/material.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [Text(MediaQuery.sizeOf(context).width.toString())],
      ),
    ));
  }
}

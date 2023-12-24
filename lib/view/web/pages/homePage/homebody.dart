import 'package:flutter/material.dart';
import 'package:portfolio/view/web/components/navButtons.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 50),
        NavigationButtons(),
        SizedBox(height: 150),
        Text('Are You Ready to',
            style: TextStyle(fontSize: 30, color: Colors.white)),
        Text('EXPLORE?',
            style:
                TextStyle(letterSpacing: 20, fontSize: 40, color: Colors.white))
      ],
    ));
  }
}

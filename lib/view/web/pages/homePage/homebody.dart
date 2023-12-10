import 'package:flutter/material.dart';
import 'package:portfolio/view/web/components/homeButtons.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
            children: [
              SizedBox(height: 50),
              HomeButtons(),
              SizedBox(height: 150),
              Text('Are', style: TextStyle(color: Colors.white))
            ],
          ) 
    );
  }
}
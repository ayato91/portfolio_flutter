import 'package:flutter/material.dart';
import 'package:portfolio/view/web/pages/homePage/homebody.dart';

import 'package:rive/rive.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xFF1E192E),
            child: RiveAnimation.asset(
                placeHolder:
                    ColoredBox(color: Color(0xFF1E192E), child: SizedBox()),
                antialiasing: true,
                alignment: Alignment.center,
                fit: BoxFit.fill,
                'assets/1809-3568-cosmos.riv'),
          ),
          HomeBody()
        ],
      ),
    );
  }
}

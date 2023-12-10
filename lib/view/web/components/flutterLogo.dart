import 'package:flutter/material.dart';

class FlutterShowcase extends StatefulWidget {
  const FlutterShowcase({super.key});

  @override
  State<FlutterShowcase> createState() => _FlutterShowcaseState();
}

class _FlutterShowcaseState extends State<FlutterShowcase> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(seconds: 1), child: InkWell(
          onTap: () => print('object'),
                        onHover: (val) => print(val),
                        
          child: FlutterLogo(size: 35)));
  }
}

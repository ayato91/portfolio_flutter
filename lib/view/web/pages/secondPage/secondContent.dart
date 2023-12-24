import 'package:flutter/material.dart';

class SecondContent extends StatelessWidget {
  const SecondContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100, child: Center()),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => Container(
              child: Center(
                  child: Text('$index', style: TextStyle(color: Colors.cyan))),
            ),
          ),
        ),
      ],
    );
  }
}

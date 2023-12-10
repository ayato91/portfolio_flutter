import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/viewmodel/bloc/homeCubit.dart';

class HomeButtons extends StatefulWidget {
  const HomeButtons({super.key});

  @override
  State<HomeButtons> createState() => _HomeButtonsState();
}

class _HomeButtonsState extends State<HomeButtons> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final model = context.watch<HomeCubit>();
        return SizedBox(
            child: Row(
          children: [
            Spacer(),
            ElevatedButton(
                onHover: (value) => model.exploreButtonHover(value),
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(Color(0x2A05bbaa)),
                    side: MaterialStatePropertyAll(BorderSide(
                        color: model.isHovered1
                            ? Colors.greenAccent
                            : Colors.white24)),
                    elevation: MaterialStatePropertyAll(10),
                    foregroundColor:
                        MaterialStatePropertyAll(Colors.white.withOpacity(0.8)),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFF0D0B15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Text('Explore Profile',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                )),
            SizedBox(width: 18),
            SizedBox(
              width: 174,
              child: ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.white),
                      elevation: MaterialStatePropertyAll(10),
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.greenAccent.shade400)),
                  onPressed: () {},
                  onHover: (value) => model.contactButtonHover(value),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 18, 0, 18),
                    child: Row(
                      children: [
                        Text('Contact Me',
                            style: TextStyle(
                                color: Color(0xFF0D0B15),
                                fontSize: 16,
                                fontWeight: FontWeight.w900)),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 220),
                          width: model.isHovered2 ? 14 : 10,
                        ),
                        Icon(Icons.arrow_forward_outlined,
                            size: 22, color: Color(0xFF0D0B15)),
                      ],
                    ),
                  )),
            ),
            SizedBox(width: 80),
          ],
        ));
      },
    );
  }
}

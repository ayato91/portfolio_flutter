import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/view/web/components/customIcons.dart';
import 'package:portfolio/view/web/components/flutterLogo.dart';
import 'package:portfolio/view/web/pages/homePage/homeContent.dart';
import 'package:portfolio/view/web/pages/secondPage/secondContent.dart';
import 'package:portfolio/viewmodel/bloc/navRailCubit.dart';

class WebPage extends StatefulWidget {
  const WebPage({super.key});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<NavRailCubit, NavRailState>(
        builder: (context, state) {
          final model = context.watch<NavRailCubit>();
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xFF1E192E),
            body: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      width: 70,
                      color: Color(0xDD221F2B),
                      child: Container(
                        child: Column(children: [
                          SizedBox(height: 40),
                          CustomIcon(
                              isSelected: true,
                              color: Colors.amber,
                              icon: Icons.computer,
                              size: 40),
                          SizedBox(height: 30),
                          InkWell(
                              onTap: () => model.indexChange(0),
                              child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: model.index == 0
                                                ? Colors.greenAccent
                                                : Colors.transparent,
                                            width: 2))),
                                child: Column(
                                  children: [
                                    CustomIcon(
                                        icon: Icons.home_outlined,
                                        color: Colors.greenAccent,
                                        isSelected: (model.index == 0)),
                                    SizedBox(height: 5),
                                    Text('HOME',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: model.index == 0
                                                ? Colors.greenAccent
                                                : Colors.white))
                                  ],
                                ),
                              )),
                          SizedBox(height: 30),
                          InkWell(
                              onTap: () {
                                model.indexChange(1);
                              },
                              child: Container(
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: model.index == 1
                                                ? Colors.cyanAccent.shade400
                                                : Colors.transparent,
                                            width: 2))),
                                child: Column(
                                  children: [
                                    CustomIcon(
                                        isSelected: model.index == 1,
                                        color: Colors.cyanAccent.shade400,
                                        icon: Icons.double_arrow_outlined),
                                    SizedBox(height: 5),
                                    Text('WORKS',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: model.index == 1
                                                ? Colors.cyanAccent.shade400
                                                : Colors.white))
                                  ],
                                ),
                              )),
                          Spacer(),
                          // FlutterShowcase(),
                          // SizedBox(height: 55)
                        ]),
                      ),
                    ),
                    Divider(),
                    Expanded(
                        child:
                            model.index == 0 ? HomeContent() : SecondContent())
                  ],
                ),
                Positioned(bottom: 80, left: 15, child: FlutterShowcase())
              ],
            ),
          );
        },
      );
}

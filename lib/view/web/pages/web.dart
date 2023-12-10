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
  Widget build(BuildContext context) {
    return BlocBuilder<NavRailCubit, NavRailState>(
      builder: (context, state) {
        final model = context.watch<NavRailCubit>();
        return Scaffold(
          backgroundColor: Color(0xFF1E192E),
          body: Row(
            children: [
              Container(
                width: 70,
                color: Color(0xF1221f2b),
                child: Container(
                  child: Column(children: [
                    SizedBox(height: 40),
                    CustomIcon(icon: Icons.html, size: 30),
                    SizedBox(height: 40),
                    InkWell(
                        onTap: () {
                          model.indexChange(0);
                        },
                        child: CustomIcon(icon: Icons.home_filled)),
                    Text('HOME',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    SizedBox(height: 40),
                    InkWell(
                        onTap: () {
                          model.indexChange(1);
                        },
                        child: CustomIcon(icon: Icons.double_arrow_outlined)),
                    Text('HEAD',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                    Spacer(),
                    FlutterShowcase(),
                    SizedBox(height: 55)
                  ]),
                ),
              ),
              Divider(),
              Expanded(
                  child: model.index == 0 ? HomeContent() : SecondContent())
            ],
          ),
        );
      },
    );
  }
}

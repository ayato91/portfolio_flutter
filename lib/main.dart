import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/view/web/pages/web.dart';
import 'package:portfolio/view/mobile/mobile.dart';
import 'package:portfolio/viewmodel/bloc/homeCubit.dart';
import 'package:portfolio/viewmodel/bloc/navRailCubit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    int targetWidth = 500;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavRailCubit()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return constraints.maxWidth < targetWidth
                ? const MobilePage()
                : const WebPage();
          },
        ),
      ),
    );
  }
}

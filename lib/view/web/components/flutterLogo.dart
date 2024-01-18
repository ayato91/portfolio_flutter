import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/viewmodel/bloc/flutterLogoCubit.dart';

class FlutterShowcase extends StatefulWidget {
  const FlutterShowcase({super.key});

  @override
  State<FlutterShowcase> createState() => _FlutterShowcaseState();
}

class _FlutterShowcaseState extends State<FlutterShowcase> {
  @override
  Widget build(BuildContext context) => BlocBuilder<LogoCubit, LogoState>(
        builder: (context, state) {
          final model = context.watch<LogoCubit>();
          return InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () => model.onPressed(),
            onHover: (val) => model.onHovered(val),
            child: AnimatedContainer(
              height: 50,
              duration: Duration(milliseconds: 200),
              width: model.isHovered || model.isTapped ? 255 : 40,
              decoration: model.isHovered || model.isTapped
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xAAFFFFFF)))
                  : ShapeDecoration(shape: ContinuousRectangleBorder()),
              child: model.isHovered || model.isTapped
                  ? Row(
                      children: [
                        SizedBox(width: 10),
                        FlutterLogo(size: 30),
                        SizedBox(width: 10),
                        Text('Made with ',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey)),
                        ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                                    colors: [Colors.blue, Colors.purple])
                                .createShader(bounds),
                            child: Icon(Icons.favorite_rounded,
                                color: Colors.white)),
                        Text(' by',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey)),
                        Text(' ayato91',
                            textScaleFactor: 1.1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.tealAccent,
                            )),
                        SizedBox(width: 10)
                      ],
                    )
                  : Align(
                      alignment: Alignment.center,
                      child: FlutterLogo(size: 40)),
            ),
          );
        },
      );
}

import 'package:flutter/material.dart';

class ContainerBackground extends StatelessWidget {
  final String? imageBackground;
  final Widget childWidget;
  const ContainerBackground({Key? key, this.imageBackground, required this.childWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: imageBackground != null
              ? DecorationImage(
                  image: AssetImage(imageBackground ?? ''),
                  fit: BoxFit.cover,
                )
              : null,
          gradient: const LinearGradient(
              tileMode: TileMode.clamp,
              stops: [0.4, 1.0],
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [Color(0xFF141e30), Color(0xFF243b55)])),
              child: childWidget,
    );
  }
}

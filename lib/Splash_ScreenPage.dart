import 'package:flutter/material.dart';

class Splash_ScreenPage extends StatefulWidget {
  const Splash_ScreenPage({this.child, this.backgroundcolor, Key? key})
      : super(key: key);
  final Widget? child;
  final Color? backgroundcolor;

  @override
  State<Splash_ScreenPage> createState() => _Splash_ScreenPageState();
}

class _Splash_ScreenPageState extends State<Splash_ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: widget.backgroundcolor ?? Colors.white,
            child: Center(
              child: widget.child ??
                  const Icon(
                    Icons.facebook,
                    color: Colors.amber,
                    size: 30,
                  ),
            )),
      ),
    );
  }
}

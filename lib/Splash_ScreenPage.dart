import 'package:flutter/material.dart';

class Splash_ScreenPage extends StatefulWidget {
  const Splash_ScreenPage(
      {this.child, required this.purpose_Page, this.backgroundcolor, Key? key})
      : super(key: key);
  final Widget? child;
  final Color? backgroundcolor;
  final Widget purpose_Page;

  @override
  State<Splash_ScreenPage> createState() => _Splash_ScreenPageState();
}

class _Splash_ScreenPageState extends State<Splash_ScreenPage> {
  @override
  void initState() {
    super.initState();
    GoMainPage(context);
  }

  Future GoMainPage(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget.purpose_Page));
  }

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
          ),
        ),
      ),
    );
  }
}

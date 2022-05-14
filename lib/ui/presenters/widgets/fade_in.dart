import 'package:flutter/material.dart';

class FadeIn extends StatefulWidget {
  final Widget? child;
  final int? delay;

  const FadeIn({Key? key, this.child, this.delay = 0}) : super(key: key);

  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> with SingleTickerProviderStateMixin {
  AnimationController? animation;
  Animation<double>? _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1).animate(animation!);

    Future.delayed(Duration(milliseconds: widget.delay!), () {
      animation!.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _fadeInFadeOut!, child: widget.child);
  }
}

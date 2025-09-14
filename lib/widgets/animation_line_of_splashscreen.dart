
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgCenteredAnim extends StatefulWidget {
  const SvgCenteredAnim({Key? key}) : super(key: key);
  @override
  State<SvgCenteredAnim> createState() => _SvgCenteredAnimState();
}

class _SvgCenteredAnimState extends State<SvgCenteredAnim>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(vsync: this, duration: const Duration(milliseconds: 800))
      ..forward();
    _scale = Tween(begin: 0.7, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _opacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Center + SizedBox give a finite (non-infinite) size -> no overflow
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 80,      // finite width
          height: 80,     // finite height
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _opacity.value,
                child: Transform.scale(
                  scale: _scale.value,
                  child: child,
                ),
              );
            },
            child: SvgPicture.asset(
              'assets/logo/Rectangle.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
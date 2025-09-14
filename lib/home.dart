import 'package:flutter/material.dart';
import 'package:runway_fashion/widgets/custom_appbar.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          title: 'Runway',
          suffix: 'assets/svgs/solar_bell-line-duotone.png',
          Prefix: 'assets/svgs/menu.svg'),
    );
  }
}

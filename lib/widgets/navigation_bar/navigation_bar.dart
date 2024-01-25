import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:skeleton/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:skeleton/widgets/navigation_bar/navigation_bar_mobile.dart';

// ignore: camel_case_types
class navigationBar extends StatelessWidget{
  const navigationBar({super.key});

  @override
  Widget build(BuildContext context){
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => navigationBarMobile(),
      tablet: (BuildContext context) => navigationBarTabletDesktop(),
    );
  }
}

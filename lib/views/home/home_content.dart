// ignore_for_file: file_names
// camelCase 4 life 

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/views/home/home_content_desktop.dart';
import 'package:skeleton/views/home/home_content_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => homeContentMobile(),
      desktop: (BuildContext context) => homeContentDesktop(),
    );
  }
}
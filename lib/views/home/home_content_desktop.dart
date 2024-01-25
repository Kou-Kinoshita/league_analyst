import 'package:flutter/material.dart';
import 'package:skeleton/widgets/search_details/search_details.dart';

//WIP
// ignore: camel_case_types
class homeContentDesktop extends StatelessWidget {
  const homeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        search_details(),
        Expanded(
          child: Center(

          ),
        )
      ],
    );
  }
}
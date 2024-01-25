import 'package:flutter/material.dart';
import 'package:skeleton/widgets/search_details/search_details.dart';

class homeContentMobile extends StatelessWidget {
  const homeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        search_details(),
      ],
    );
  }
}
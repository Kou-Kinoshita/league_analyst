import 'package:flutter/material.dart';

class navigationDrawerHeader extends StatelessWidget {
  const navigationDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('sKeleton'),
        ],
      ),
    );
  }
}
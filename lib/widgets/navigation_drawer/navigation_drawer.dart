import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/routing/route_names.dart';
import 'package:skeleton/widgets/navigation_drawer/drawer_item.dart';
import 'package:skeleton/widgets/navigation_drawer/navigation_drawer_header.dart';


class navigationDrawer extends StatelessWidget {
  const navigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ]
      ),
      child: Column(
        children: <Widget>[
          navigationDrawerHeader(),
          drawerItem('home', Icons.home, homeRoute),
          drawerItem('Player Analysis', Icons.analytics, analysisRoute),
          drawerItem('Leader Board', Icons.sports_esports_outlined, leaderBoardRoute)
        ],
      ),
    );
  }
}
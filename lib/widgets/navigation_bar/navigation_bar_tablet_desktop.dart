import 'package:flutter/material.dart';
import 'package:skeleton/routing/route_names.dart';
import 'package:skeleton/widgets/navigation_bar/navBarItem.dart';

class navigationBarTabletDesktop extends StatelessWidget{
  const navigationBarTabletDesktop({super.key});


  @override 
  Widget build(BuildContext context){
    return SizedBox(
      height: 80,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 150,
            child: Text(
              'site name',
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home', homeRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('LeaderBoard', leaderBoardRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Player Analysis', analysisRoute),
            ],
          )
        ],
      ),
    );
  }
}

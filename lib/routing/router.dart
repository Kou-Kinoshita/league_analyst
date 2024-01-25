import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skeleton/routing/route_names.dart';
import 'package:skeleton/views/home/home_content.dart';
import 'package:skeleton/views/leader_board/leader_board_view.dart';
import 'package:skeleton/views/player_analysis/player_analysis_view.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case homeRoute:
      return _getPageRoute(HomePage());
    case analysisRoute:
      return _getPageRoute(playerAnalysis());
    case leaderBoardRoute:
      return _getPageRoute(leaderBoard());
    default:
      return _getPageRoute(HomePage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: ((context) => child));
}

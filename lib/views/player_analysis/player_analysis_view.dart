import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:skeleton/services/API/api_requests.dart';
import 'package:skeleton/widgets/player_analysis/match_history.dart';

class playerAnalysis extends StatefulWidget {
  const playerAnalysis({super.key});

  @override
  State<playerAnalysis> createState() => _playerAnalysis();
}

class _playerAnalysis extends State<playerAnalysis> {

  @override
  Widget build(BuildContext context) {
    return Row(
/*
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: const <Widget>[
        matchHistoryWidget(), // msm nome da variável, mudar dps
      ],
*/
    );
  }
}
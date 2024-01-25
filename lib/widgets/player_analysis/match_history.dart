import 'package:flutter/material.dart';
import 'package:skeleton/services/API/API_params.dart';
import 'package:skeleton/services/API/api_requests.dart';
import 'package:skeleton/widgets/player_analysis/analysis_vars.dart';

// ignore: camel_case_types
class matchHistoryWidget extends StatefulWidget {
  const matchHistoryWidget({super.key});

  @override
  State<matchHistoryWidget> createState() => _matchHistoryWidget();
}

// ignore: camel_case_types
class _matchHistoryWidget extends State<matchHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: matchInfoList.length,
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Name: KOMETA18'),
          subtitle: Text('Victory'),
        );
      }
    );  
  }
}


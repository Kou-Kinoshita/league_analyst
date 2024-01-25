import 'package:skeleton/services/API/api_requests.dart';

Future<List<Map<String, dynamic>>> buildMatchInfoList(List<String> matchHistory, String region, String apiKey) async {
  Map<String, dynamic> matchInfo;
  List<Map<String, dynamic>> matchInfoList = [];

  for (var matchId in matchHistory) {
    matchInfo = await getMatchInfo(matchId, region, apiKey);
    matchInfoList.add(matchInfo);
  }

  return matchInfoList;
}
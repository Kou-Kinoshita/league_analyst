import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

import 'package:skeleton/services/API/api_params.dart';

Future<String> getSummonerPuuid(String name, String tag, String apiKey, String region) async {
  try {
    print('Attempting to make API request...');
    final response = await http.get(
      Uri.parse('https://$region.api.riotgames.com/riot/account/v1/accounts/by-riot-id/$name/$tag?api_key=$apiKey'),
      headers: headers
    );

    print('HTTP request completed.');

    if (response.statusCode == 200) {
      final acc = jsonDecode(response.body);
      print(acc);
      return acc['puuid'];
    } else {
      print('API Request failed with status code: ${response.statusCode}');
      //print('Response body: ${response.body}');
      throw Exception('Failed to load summoner puuid');
    }
  } catch (error) {
    print('Error in getSummonerPuuid: $error');
    throw Exception('Failed to load summoner puuid');
  }
}

Future<Map<String, dynamic>> getSummonerInfo(String puuid, String server, String apiKey) async {
  final response = await http.get(
    Uri.parse('https://$server.api.riotgames.com/lol/summoner/v4/summoners/by-puuid/$puuid?api_key=$apiKey'),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load summoner info');
  }
}

Future<List<String>> getMatchHistory(String puuid, String region, String apiKey, String nMatches, String matchType) async {
  final response = await http.get(
    Uri.parse('https://$region.api.riotgames.com/lol/match/v5/matches/by-puuid/$puuid/ids?type=$matchType&start=0&count=$nMatches&api_key=$apiKey'),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body).cast<String>();
  } else {
    throw Exception('Failed to load match list');
  }
}

Future<Map<String, dynamic>> getMatchInfo(String matchId, String region, String apiKey) async {
  final response = await http.get(
    Uri.parse('https://$region.api.riotgames.com/lol/match/v5/matches/$matchId?api_key=$apiKey'),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load match data');
  }
}

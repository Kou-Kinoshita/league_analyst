import 'package:skeleton/services/API/api_requests.dart';

// request
String puuid = '';
String name = 'kometa18';
String tag = 'br1';
String region = 'americas';
String server = 'br1';
String nMatches = '20';
String matchType = 'ranked';
String matchId = '';

const String apiKey = 'RGAPI-4594f799-bd38-4faf-aaf2-8128a25f730c';

Map<String, String> get headers => {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Accept-Language": "pt-BR,pt;q=0.9",
    "Accept-Charset": "application/x-www-form-urlencoded; charset=UTF-8",
    "Origin": "https://developer.riotgames.com"
};

//response
Map<String, dynamic> summonerInfo = {};
List<String> matchHistory = [];
Map<String, dynamic> matchInfo = {};
import 'package:flutter/material.dart';
import 'package:skeleton/services/API/API_params.dart';
import 'package:skeleton/services/API/api_requests.dart';
import 'package:skeleton/widgets/player_analysis/analysis_vars.dart';
import 'package:skeleton/widgets/player_analysis/build_data.dart';

// ignore: camel_case_types
class search_details extends StatefulWidget {
  const search_details({super.key});

  @override
  State<search_details> createState() => _search_details();
}

// ignore: camel_case_types
class _search_details extends State<search_details> {

  final nameController = TextEditingController();
  final tagController = TextEditingController();

  void dropdownCallback(String? selectedValue){
    if(selectedValue is String){
      setState(() {
        server = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 190,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            'https://cdnb.artstation.com/p/assets/images/images/036/132/497/large/qi-mang-10m.jpg?1616794088',
            fit: BoxFit.cover,
          )
        ),
        Column(
          children: [
            DropdownButton(
              items: const [
                DropdownMenuItem(value: 'br1', child: Text ('BR')),//
                DropdownMenuItem(value: 'eun1', child: Text ('EUN')),//
                DropdownMenuItem(value: 'euw1', child: Text ('EUW')),//
                DropdownMenuItem(value: 'jp1', child: Text ('JP')),
                DropdownMenuItem(value: 'kr', child: Text ('KR')),
                DropdownMenuItem(value: 'la1', child: Text ('LA1')),//
                DropdownMenuItem(value: 'la2', child: Text ('LA2')),//
                DropdownMenuItem(value: 'na1', child: Text ('NA')),//
                DropdownMenuItem(value: 'oc1', child: Text ('OCE')),
                DropdownMenuItem(value: 'ph2', child: Text ('Ph')),
                DropdownMenuItem(value: 'ru', child: Text ('RU')),
                DropdownMenuItem(value: 'sg2', child: Text ('SG')),
                DropdownMenuItem(value: 'th2', child: Text ('TH')),
                DropdownMenuItem(value: 'tr1', child: Text ('TR')),
                DropdownMenuItem(value: 'tw2', child: Text ('TW')),
                DropdownMenuItem(value: 'vn1', child: Text ('VN')),
              ], 
              onChanged: dropdownCallback,
              icon: const Icon(Icons.public),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  width: 180,
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Player name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                    ),
                  ),
                ),

                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: tagController,
                    decoration: const InputDecoration(
                      labelText: 'Tag',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.tag),
                      filled: true,
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () async{
                    tag = tagController.text;
                    name = nameController.text;;
                    region = regionFilter(server);
                    puuid = await getSummonerPuuid(name, tag, apiKey, region);
                    summonerInfo = await getSummonerInfo(puuid, server, apiKey);
                    matchHistory = await getMatchHistory(puuid, region, apiKey, nMatches, matchType);
                    matchInfoList = await buildMatchInfoList(matchHistory, region, apiKey);
                  }, 
                  icon: const Icon(Icons.search)
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

String regionFilter(String server){
  if(server == 'br1' || server == 'la1' || server == 'la2' || server == 'na1'){
    return 'americas';
  }
  else if (server == 'eun1' || server == 'euw1' ||server == 'eun1' ||server == 'eun1'){
    return 'europe';
  }
  else{
    return 'asia';
  }
}        
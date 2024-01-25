import 'package:flutter/material.dart';
import 'package:skeleton/widgets/navigation_bar/navBarItem.dart';

class drawerItem extends StatelessWidget{
  final String title;
  final IconData icon;
  final String navigationPath;
  const drawerItem(this.title, this.icon, this.navigationPath);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[ 
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          NavBarItem(title, navigationPath)
        ],
      ),
    );
  }
}
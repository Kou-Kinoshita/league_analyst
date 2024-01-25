import 'package:flutter/material.dart';

class navigationBarMobile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
            IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              }, 
              icon: Icon(Icons.menu),
            ),
          SizedBox(
            width: 150,
            child: Text(
              'sKeleton',
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeleton/locator.dart';
import 'package:skeleton/services/navigation_service.dart';

class NavBarItem extends StatelessWidget{
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title, style: GoogleFonts.oswald(
          fontSize: 21,
        )
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) async {
    if (navigatorKey.currentState != null) {
      return await navigatorKey.currentState!.pushNamed(routeName);
    }
  }

  bool goBack() {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState!.pop();
      return true; 
    }
    return false; 
  }
}
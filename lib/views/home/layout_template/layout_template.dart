import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:skeleton/locator.dart';
import 'package:skeleton/routing/route_names.dart';
import 'package:skeleton/routing/router.dart';
import 'package:skeleton/services/navigation_service.dart';
import 'package:skeleton/widgets/centered_view/centered_view.dart';
import 'package:skeleton/widgets/navigation_bar/navigation_bar.dart';
import 'package:skeleton/widgets/navigation_drawer/navigation_drawer.dart';

class layoutTemplate extends StatelessWidget {
  const layoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile 
          ? navigationDrawer()
          : null,
        body: SizedBox(
          child: CenteredView(
            child: Column(
              children: <Widget>[
                navigationBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: homeRoute,
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
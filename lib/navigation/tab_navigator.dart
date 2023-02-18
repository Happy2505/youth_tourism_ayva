import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/navigation/tab.dart';

import '../domain/factoryes/scren_factory.dart';


class TabNavigator extends StatelessWidget {
  TabNavigator({super.key, required this.navigatorKey, required this.tabItem});

  final GlobalKey<NavigatorState> navigatorKey;
  final _screenFactory = ScreenFactory();
  final TabItem tabItem;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        late Widget currentPage;
        if (tabItem == TabItem.Home) {
          currentPage = _screenFactory.makeHome();
        } else if (tabItem == TabItem.Residence) {
          currentPage = _screenFactory.makeResidence();
        } else if (tabItem == TabItem.Events) {
          currentPage = _screenFactory.makeEvents();
        } else if (tabItem == TabItem.Profile) {
          currentPage = _screenFactory.makeProfile();
        }
        return MaterialPageRoute(builder: (context) => currentPage);
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../domain/factoryes/scren_factory.dart';

abstract class MainNavigationRouteNames {
  static const loaderWidget = '/';
  static const auth = '/auth';
  static const mainScreen = '/main_screen';
  static const productDetails = '/main_screencreen/product_details';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loaderWidget: (_) => _screenFactory.makeAuth(),
    MainNavigationRouteNames.auth: (_) => _screenFactory.makeAuth(),
    MainNavigationRouteNames.mainScreen: (_) => _screenFactory.makeAuth(),
  };
  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRouteNames.productDetails:
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeAuth(),
        );
      // case MainNavigationRouteNames.movieTrailerWidget:
      //   final arguments = settings.arguments;
      //   final youtubeKey = arguments is String ? arguments : '';
      //   return MaterialPageRoute(
      //     builder: (_) => _screenFactory.makeMovieTrailer(youtubeKey),
      //   );
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }

  static void resetNavigation(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      MainNavigationRouteNames.mainScreen,
          (route) => false,
    );
  }
}
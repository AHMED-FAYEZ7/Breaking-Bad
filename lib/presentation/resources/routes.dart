
import 'package:breaking_bad/presentation/screens/characters_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:breaking_bad/presentation/screens/charactars_screen.dart';

class Routes
{
  static const String charactarRoute = "/";
  static const String charactarDetailesRoute = "charactar_detailes";

}

class AppRouter {
  static Route<dynamic> gneratetRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.charactarRoute:
        return MaterialPageRoute(builder: (_) => CharactarScreen());
      case Routes.charactarDetailesRoute:
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
      default:
        return unDefinedRoute();
    }
   
  }

  static Route<dynamic> unDefinedRoute()
  {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text(
              "NoRouteFound",
            ),
          ),
          body: Center(
            child: Text(
                "NoRouteFound",
            ),
          ),
        ),
    );
  }
}

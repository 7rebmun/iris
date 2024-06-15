import 'package:flutter/material.dart';
import 'package:iris/src/pages/index.dart';

class IrisRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static String get initialRoute => IndexPage.routeName;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case IndexPage.routeName:
        return MaterialPageRoute(builder: (_) => const IndexPage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}

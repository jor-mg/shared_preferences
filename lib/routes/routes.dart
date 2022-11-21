import 'package:flutter/material.dart';

import 'package:user_save/pages/pages.dart';

class MyRoutes {
  static const String rHome = '/home';
  static const String rConfiguration = '/configuration';
  static const String rProfile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ('/home'):
        return MaterialPageRoute(builder: (context) => const HomePage());
      case ('/configuration'):
        return MaterialPageRoute(
            builder: (context) => const ConfigurationPage());
      case ('/profile'):
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}

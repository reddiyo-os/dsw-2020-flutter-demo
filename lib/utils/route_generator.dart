import 'package:flutter/material.dart';
import 'package:dsw_2020_demo/ui/home/home_page.dart';
import 'package:dsw_2020_demo/ui/profile/profile_page.dart';
import 'package:dsw_2020_demo/ui/favorites/favorites_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/favorites':
        return MaterialPageRoute(builder: (_) => FavoritesPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    //This is essentially your 404 page
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

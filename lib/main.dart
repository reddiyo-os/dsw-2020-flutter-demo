import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsw_2020_demo/controllers/image_search.dart';
import 'package:dsw_2020_demo/ui/home/home_page.dart';
import 'package:dsw_2020_demo/ui/profile/profile_page.dart';
import 'package:dsw_2020_demo/ui/favorites/favorites_page.dart';
//import 'package:dsw_2020_demo/utils/route_generator.dart';

void main() {
  runApp(VacationDreamBook());
}

class VacationDreamBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vacation Dream Book',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/favorites': (context) => FavoritesPage()
      },
      // You can use onGenerateRoute instead of defining routes here.
      // See utils/route_generator.dart for implementation.
      //onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

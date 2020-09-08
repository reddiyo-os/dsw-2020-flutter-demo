import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('HOME'),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('PROFILE'),
            onTap: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('FAVORITES'),
            onTap: () {
              Navigator.of(context).pushNamed('/favorites');
            },
          ),
        ],
      ),
    );
  }
}

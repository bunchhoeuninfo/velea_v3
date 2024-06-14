import 'package:flutter/material.dart';

class MenuMobile extends StatefulWidget {

  const MenuMobile({
    super.key,
  });

  @override
  State<MenuMobile> createState() => _MenuMobileState();
  
}

class _MenuMobileState extends State<MenuMobile> {

  String _selectedPage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
              onTap: () {
                setState(() {
                  _selectedPage = 'Message';
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                setState(() {
                  _selectedPage = 'Profile';
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                setState(() {
                  _selectedPage = 'Settings';
                });
              },
            )
          ],
        ),
      ),
    );
  }

}
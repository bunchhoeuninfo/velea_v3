import 'package:flutter/material.dart';

class HomeContentMobile extends StatefulWidget {

  const HomeContentMobile({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _HomeContentMobileState();

}

class _HomeContentMobileState extends State<HomeContentMobile> {

  bool _isOverlayVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer(),
      body: SafeArea(
        child: Column(
          children: <Widget> [
            //Expanded(child: MenuMobile()),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Mobile screen size'),
              ),             
            ),
          ],
        ),
      ),
    );
  }

  Drawer _drawer() {
    return Drawer(
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
                  //_selectedPage = 'Message';
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                setState(() {
                  //_selectedPage = 'Profile';
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                setState(() {
                 //_selectedPage = 'Settings';
                });
              },
            )
          ],
        ),
      );
  }

}
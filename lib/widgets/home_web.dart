import 'package:flutter/material.dart';

import 'mobiles/list_radio_channels.dart';




class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _VeleaHomeState();
  
}

class _VeleaHomeState extends State<Home> {

  late ValueNotifier<bool> _isOnline;

  @override
  void initState() {
    super.initState();

    _isOnline = ValueNotifier(true);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Velea App'),
      ),

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
              leading: Icon(Icons.radio),
              title: Text('Radio Channels'),
              onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListRadioChannels(),
                ),
              );
              },
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
      ),
      
      body: SizedBox(
        child: Text('dddddddddddd'),
      ),


    );

    
  }

}
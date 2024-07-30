import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'list_radio_channels.dart';
import 'listen_radio_channel_mb.dart';




class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});


  @override
  State<HomeMobile> createState() => _VeleaHomeState();
  
}

class _VeleaHomeState extends State<HomeMobile> {

  late ValueNotifier<bool> _isOnline;

  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _isOnline = ValueNotifier(true);

    _controller = YoutubePlayerController(
      initialVideoId: 'Jbt5dRYFOPo', // Replace with your YouTube video ID
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

  }

  void onRadioPressed() {
    Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListRadioChannels(),
              )
            );
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
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blue,
              child: Text(
                'Welcome to our online radio, providing music and various news.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  buildGridButton('Radio', Icons.radio, onRadioPressed),
                  buildGridButton('Gallery', Icons.tv, () {}),
                  buildGridButton('Settings', Icons.settings, () {}),
                  buildGridButton('Notifications', Icons.notifications, () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTVPressed() {
    Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListRadioChannels(),
              )
            );
  }

  Widget buildGridButton(String title, IconData icon, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.blue, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.blue,
                size: 50,
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
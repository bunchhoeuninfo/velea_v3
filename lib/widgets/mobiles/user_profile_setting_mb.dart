import 'package:flutter/material.dart';
import 'package:velea_v3/theme/velea_theme.dart';

class UserProfileSettingMB extends StatefulWidget {
  const UserProfileSettingMB({
    super.key,
  });
  
  @override
  State<UserProfileSettingMB> createState() => _UserProfileSettingMB();

}

class _UserProfileSettingMB extends State<UserProfileSettingMB> {
  
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: VeleaTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: VeleaTheme.of(context).appBarBackground,
        centerTitle: true,
        //elevation: 0,
      ),
      body: Column(
        children: [
          Container(            
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                SizedBox(height: 35), // Status bar height
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, size: 60, color: Colors.white),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(Icons.camera_alt, size: 25, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('ភាសា'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('ខ្មែរ'),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ប្តូរពាក្យសម្ងាត់'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('កំណត់យៈពេលចាកចេញដោយស្វ័យប្រវតិ'),
                  trailing: Text('1 នាទី'),
                  onTap: () {},
                ),
                SwitchListTile(
                  title: Text('បើកមុខងារ Face ID'),
                  value: false,
                  onChanged: (bool value) {},
                ),
                SwitchListTile(
                  title: Text('ចូលប្រើប្រាស់កម្ជីដែលប្រើនៅសងខាង'),
                  value: true,
                  onChanged: (bool value) {},
                ),
                ListTile(
                  title: Text('ផ្ញើសំណូមពរ'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('លក្ខខណ្ឌ'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('ជំនួយ'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'ចាកចេញពីកម្មវិធី',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'លុបគណនី',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 20),
                const Center(
                  child: Text(
                    'កម្មវិធីស្តាប់វិទ្យុលើបណ្តាញអីនធឺណិតជំនាន់ V1.1.01',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
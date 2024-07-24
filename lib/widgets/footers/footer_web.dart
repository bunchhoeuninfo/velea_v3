import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Column 1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Link 1', style: TextStyle(color: Colors.white)),
              Text('Link 2', style: TextStyle(color: Colors.white)),
              Text('Link 3', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Column 2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Link 1', style: TextStyle(color: Colors.white)),
              Text('Link 2', style: TextStyle(color: Colors.white)),
              Text('Link 3', style: TextStyle(color: Colors.white)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Column 3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Link 1', style: TextStyle(color: Colors.white)),
              Text('Link 2', style: TextStyle(color: Colors.white)),
              Text('Link 3', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }


}
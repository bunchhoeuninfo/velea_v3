import 'package:flutter/material.dart';
import 'package:velea_v3/widgets/home_widget.dart';


class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _VeleaHomeState();
  
}

class _VeleaHomeState extends State<Home> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      child: HomeWidget(),
    );
  }

}
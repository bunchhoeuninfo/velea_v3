import 'package:flutter/material.dart';

import '../core_lib/wolt_responsive_layout_grid.dart';

class HomeWidget extends StatefulWidget {

  const HomeWidget ({
    super.key,
  });

  @override
  State<HomeWidget> createState() => _HomeWidgetState();

}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return  WoltScreenWidthAdaptiveWidget(
      smallScreenWidthChild: Text('Mobile Screen - In Progress'),
      largeScreenWidthChild: Text('Big screen - Comming Soon!!!'),
    );
  }

}
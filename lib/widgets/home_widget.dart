import 'package:flutter/material.dart';
import 'package:velea_v3/mobile/contents/home_content_mobile.dart';

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
      smallScreenWidthChild: HomeContentMobile(),
      largeScreenWidthChild: Text('Big screen - Comming Soon!!!'),
    );
  }

}
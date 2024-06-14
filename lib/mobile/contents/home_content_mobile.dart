import 'package:flutter/material.dart';
import 'package:velea_v3/core_lib/wolt_responsive_layout_grid.dart';
import 'package:velea_v3/mobile/menu/menu_mobile.dart';

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
      body: SafeArea(
        child: Column(
          children: <Widget> [
            GestureDetector(
              onTap: () {
                setState(() => _isOverlayVisible = !_isOverlayVisible);
              },
              child: MenuMobile(),
            ),
            Expanded(
              child: WoltResponsiveLayoutGrid(
                margin: 8,
                gutter: 8,
                isOverlayVisible: _isOverlayVisible,
                columnSpanCells: [
                  WoltColumnSpanCell(
                    columnCellWidget: columnCellWidget, 
                    columnSpan: columnSpan
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
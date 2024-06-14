import 'package:flutter/material.dart';

class DrawerData {

  const DrawerData(
    this.label,
    this.icon,
    this.selectedIcon,
  );

  final String label;
  final Widget icon;
  final Widget selectedIcon;


}
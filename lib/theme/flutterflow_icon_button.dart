import 'package:flutter/material.dart';

class FlutterFlowIconButton extends StatelessWidget {
  final double borderRadius;
  final double buttonSize;
  final double borderWidth;
  final Color borderColor;
  final Icon icon;
  final Color color;
  final VoidCallback onPressed;

  const FlutterFlowIconButton({
    Key? key,
    required this.borderColor,
    required this.borderRadius,
    required this.buttonSize,
    required this.borderWidth,
    required this.icon,
    this.color = Colors.transparent,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: IconButton(
        iconSize: buttonSize,
        icon: icon,
        color: color,
        onPressed: onPressed,
      ),
    );
  }
}
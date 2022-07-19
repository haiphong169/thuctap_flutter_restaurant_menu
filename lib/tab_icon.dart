import 'dart:ffi';

import 'package:flutter/material.dart';

class TabIcon extends StatefulWidget {
  const TabIcon({Key? key, required this.icon, required this.handleTap})
      : super(key: key);

  final IconData icon;
  final VoidCallback handleTap;

  @override
  State<TabIcon> createState() => _TabIconState();
}

class _TabIconState extends State<TabIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(widget.icon),
      onPressed: widget.handleTap,
    );
  }
}

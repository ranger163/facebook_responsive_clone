import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  CustomTabBar({this.icons, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

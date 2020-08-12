import 'package:facebook_responsive_clone/config/palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  CustomTabBar({this.icons, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.facebookBlue,
            width: 3,
          ),
        ),
      ),
      tabs: icons
          .asMap()
          .map((index, element) => MapEntry(
              index,
              Tab(
                icon: Icon(
                  element,
                  color: index == selectedIndex
                      ? Palette.facebookBlue
                      : Colors.black45,size: 30,
                ),
              )))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}

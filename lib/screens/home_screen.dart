import 'package:facebook_responsive_clone/config/palette.dart';
import 'package:facebook_responsive_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(Icons.search, 30, () {
                print('Search');
              }),
              CircleButton(MdiIcons.facebookMessenger, 30, () {
                print('Messenger');
              }),
            ],
          )
        ],
      ),
    );
  }
}

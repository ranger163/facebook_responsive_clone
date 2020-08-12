import 'package:facebook_responsive_clone/screens/screens.dart';
import 'package:facebook_responsive_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    _ScreenPlaceHolder('Videos will appear here'),
    _ScreenPlaceHolder('Profile will appear here'),
    _ScreenPlaceHolder('Groups will appear here'),
    _ScreenPlaceHolder('Notifications will appear here'),
    _ScreenPlaceHolder('Setting will appear here'),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index)),
      ),
    );
  }
}

class _ScreenPlaceHolder extends StatelessWidget {
  final String text;

  _ScreenPlaceHolder(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        text,
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}

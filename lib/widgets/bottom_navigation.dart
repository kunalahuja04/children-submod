import 'package:flutter/material.dart';
import 'package:yogaApp/icons/yoga_app_icons_icons.dart';

class BottomNavigation extends StatelessWidget {
  final IconData navIcon;
  final String iconText;
  final bool isTapped;

  const BottomNavigation({
    Key key,
    this.navIcon,
    this.iconText,
    this.isTapped = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          NavMenuButtons(
            navIcon: YogaAppIcons.meditation,
            iconText: 'Yoga',
            iColor: Colors.purpleAccent,
          ),
          NavMenuButtons(
            navIcon: YogaAppIcons.saturn,
            iconText: 'Meditation',
            iColor: Colors.grey,
          ),
          NavMenuButtons(
            navIcon: YogaAppIcons.avocado,
            iconText: 'Food',
            iColor: Colors.grey,
          ),
          NavMenuButtons(
            navIcon: YogaAppIcons.smile,
            iconText: 'Profile',
            iColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}

class NavMenuButtons extends StatelessWidget {
  const NavMenuButtons({
    Key key,
    @required this.navIcon,
    @required this.iconText,
    this.iColor,
  }) : super(key: key);

  final IconData navIcon;
  final String iconText;
  final Color iColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            navIcon,
            size: 36.0,
            color: iColor,
          ),
          Text(
            iconText,
            style: TextStyle(
              fontSize: 12.0,
              color: iColor,
            ),
          ),
        ],
      ),
    );
  }
}

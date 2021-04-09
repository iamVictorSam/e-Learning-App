import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

CurvedNavigationBar buildCurvedNavigationBar(BuildContext context) {
  return CurvedNavigationBar(
      animationDuration: kAnimationDuration,
      color: kPrimraryColor,
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: kPrimraryColor,
      animationCurve: Curves.easeOutQuart,
      height: 50,
      items: <Widget>[
        Icon(
          Icons.home,
          size: 20,
          color: Colors.white,
        ),
        Icon(
          Icons.receipt,
          size: 20,
          color: Colors.white,
        ),
        Icon(
          Icons.person,
          size: 20,
          color: Colors.white,
        ),
      ],
      onTap: (index) {});
}

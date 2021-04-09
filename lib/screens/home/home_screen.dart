import 'package:flutter/material.dart';
import 'package:nimihub/components/curved_navigation_bar.dart';
import 'package:nimihub/screens/home/components/body.dart';

import '../../sizeConfig1.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            SizeConfig1().init(constraints, orientation);
            return Scaffold(
              backgroundColor: Colors.white,
              bottomNavigationBar: buildCurvedNavigationBar(context),
              body: Body(),
            );
          },
        );
      },
    );
  }
}

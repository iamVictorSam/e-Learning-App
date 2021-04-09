import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../sizeConfig1.dart';

Widget getAppBarUi() {
  return Padding(
    padding: EdgeInsets.only(
      top: 2 * SizeConfig1.heightMultiplier,
      left: 18,
      right: 10,
    ),
    child: Row(
      children: [
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, \nwhat will like to \nlearn today ?',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 2.8 * SizeConfig1.textMultiplier,
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            Container(
              height: 12 * SizeConfig1.imageSizeMultiplier,
              width: 12 * SizeConfig1.imageSizeMultiplier,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: CupertinoColors.white.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/home/people.png'),
              ),
            ),
            Text(
              'Nimihub',
              style: TextStyle(
                fontSize: 1.8 * SizeConfig1.textMultiplier,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

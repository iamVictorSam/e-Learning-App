import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../sizeConfig1.dart';

Widget getSearchBarUi() {
  return Padding(
    padding: EdgeInsets.only(top: 3 * SizeConfig1.heightMultiplier, left: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 60,
          width: 73 * SizeConfig1.widthMultiplier,
          child: Padding(
            padding: EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: CupertinoColors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextField(
                        cursorColor: kPrimraryColor,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1.0,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.only(top: 0, left: 10),
                          hintText: 'Search here',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
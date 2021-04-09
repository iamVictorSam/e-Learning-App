import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nimihub/Models/latest_course.dart';
import 'package:nimihub/constants.dart';
import 'package:nimihub/sizeConfig1.dart';

class LatestListUi extends StatelessWidget {
  final LatestCourse latestCourseList;
  final Function press;

  const LatestListUi({Key key, this.latestCourseList, this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73 * SizeConfig1.widthMultiplier,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: GestureDetector(
              onTap: press,
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 11.67 * SizeConfig1.widthMultiplier,
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 17 * SizeConfig1.widthMultiplier,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CatTitle(
                                        latestCourseList: latestCourseList),
                                    CatLessonsAndRating(
                                        latestCourseList: latestCourseList),
                                    CatMoneyAndIcon(
                                        latestCourseList: latestCourseList),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: kPrimraryColor.withOpacity(0.15),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                3.88 * SizeConfig1.heightMultiplier),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          CatImage(latestCourseList: latestCourseList)
        ],
      ),
    );
  }
}

class CatTitle extends StatelessWidget {
  const CatTitle({
    Key key,
    @required this.latestCourseList,
  }) : super(key: key);

  final LatestCourse latestCourseList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 6 * SizeConfig1.widthMultiplier,
        top: 1.3 * SizeConfig1.heightMultiplier,
      ),
      child: Container(
        height: 7 * SizeConfig1.heightMultiplier,
        child: Center(
          child: Text(
            latestCourseList.title,
            style: TextStyle(
              letterSpacing: 0.27,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 2.06 * SizeConfig1.textMultiplier,
            ),
          ),
        ),
      ),
    );
  }
}

class CatLessonsAndRating extends StatelessWidget {
  const CatLessonsAndRating({
    Key key,
    @required this.latestCourseList,
  }) : super(key: key);

  final LatestCourse latestCourseList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0.64 * SizeConfig1.heightMultiplier,
        bottom: 1.28 * SizeConfig1.heightMultiplier,
        right: 2.46 * SizeConfig1.widthMultiplier,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${latestCourseList.lessonsCount} Lessons',
            style: TextStyle(
              letterSpacing: 0.27,
              fontSize: 1.54 * SizeConfig1.textMultiplier,
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  '${latestCourseList.rating}',
                  style: TextStyle(
                    letterSpacing: 0.27,
                    fontSize: 1.54 * SizeConfig1.textMultiplier,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[300],
                  size: 2.6 * SizeConfig1.heightMultiplier,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CatMoneyAndIcon extends StatelessWidget {
  const CatMoneyAndIcon({
    Key key,
    @required this.latestCourseList,
  }) : super(key: key);

  final LatestCourse latestCourseList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 2.46 * SizeConfig1.widthMultiplier,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '\$${latestCourseList.money}',
            style: TextStyle(
                color: kPrimraryColor,
                fontSize: 2 * SizeConfig1.textMultiplier,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.27),
          ),
          Container(
            decoration: BoxDecoration(
              color: kPrimraryColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(
                Icons.add,
                size: 3 * SizeConfig1.heightMultiplier,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CatImage extends StatelessWidget {
  const CatImage({
    Key key,
    @required this.latestCourseList,
  }) : super(key: key);

  final LatestCourse latestCourseList;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15,
      bottom: 15,
      left: 18,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimraryColor.withOpacity(0.6),
        ),
        child: Container(
          // decoration: BoxDecoration(
          //     color: kPrimraryColor, borderRadius: BorderRadius.circular(13)),
          child: Center(
            child: Container(
              height: 10 * SizeConfig1.heightMultiplier,
              width: 22 * SizeConfig1.widthMultiplier,
              child: Image.asset(latestCourseList.imagePath),
            ),
          ),
        ),
      ),
    );
  }
}

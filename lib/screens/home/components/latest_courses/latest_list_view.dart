import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:nimihub/Models/latest_course_list.dart';
import 'package:nimihub/constants.dart';
import 'package:nimihub/screens/course_info/course_info.dart';
import 'package:nimihub/screens/home/components/latest_courses/latest_list_ui.dart';
import 'package:nimihub/sizeConfig1.dart';

class LatestListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.2 * SizeConfig1.heightMultiplier,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: latestCourse.length,
        itemBuilder: (context, index) {
          String title = latestCourse[index].title;
          int lessonsCount = latestCourse[index].lessonsCount;
          String imagePath = latestCourse[index].imagePath;
          int money = latestCourse[index].money;
          double rating = latestCourse[index].rating;

          return OpenContainer(
            openColor: kPrimraryColor.withOpacity(0.15),
            closedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            transitionType: ContainerTransitionType.fade,
            transitionDuration: Duration(milliseconds: 800),
            closedColor: Colors.white70,
            closedElevation: 0.0,
            openElevation: 0.0,
            openBuilder: (context, _) {
              return CourseInfo(
                imagePath: imagePath,
                title: title,
                money: money,
                rating: rating,
                lessonCount: lessonsCount,
              );
            },
            closedBuilder: (context, callBack) {
              return LatestListUi(
                latestCourseList: latestCourse[index],
                press: callBack,
              );
            },
          );
        },
      ),
    );
  }
}

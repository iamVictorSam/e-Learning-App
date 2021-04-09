import 'package:flutter/material.dart';
import 'package:nimihub/Models/latest_course_list.dart';
import 'package:nimihub/Models/popular_course_list.dart';
import 'package:nimihub/screens/home/components/popular_courses/popular_list_ui.dart';
import 'package:nimihub/sizeConfig1.dart';

class PopularListView extends StatelessWidget {
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
          return PopularListUi(
            popularCourse: popularCourseList[index],
          );
        },
      ),
    );
  }
}

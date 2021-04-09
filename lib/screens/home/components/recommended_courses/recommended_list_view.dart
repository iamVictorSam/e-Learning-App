import 'package:flutter/material.dart';
import 'package:nimihub/Models/recommended_course_list.dart';
import 'package:nimihub/screens/home/components/recommended_courses/recommended_list_ui.dart';
import 'package:nimihub/sizeConfig1.dart';

class RecommendedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.2 * SizeConfig1.heightMultiplier,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: recommededCourseList.length,
        itemBuilder: (context, index) {
          return RecommendedListUi(
            recommendedCourse: recommededCourseList[index],
          );
        },
      ),
    );
  }
}

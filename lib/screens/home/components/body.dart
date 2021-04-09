import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nimihub/constants.dart';
import 'package:nimihub/my_clippers/clipPath.dart';
import 'package:nimihub/screens/home/components/category/category_list_view.dart';
import 'package:nimihub/screens/home/components/get_appBar_ui.dart';
import 'package:nimihub/screens/home/components/get_search_bar_ui.dart';
import 'package:nimihub/screens/home/components/latest_courses/latest_list_view.dart';
import 'package:nimihub/screens/home/components/popular_courses/popular_list_view.dart';
import 'package:nimihub/screens/home/components/recommended_courses/recommended_list_view.dart';

import '../../../sizeConfig1.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          // pinned: true,
          // floating: false,
          expandedHeight: 35 * SizeConfig1.heightMultiplier,
          flexibleSpace: FlexibleSpaceBar(
            background: getFlexibleSpaceAppBar(),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              // Container(
              //   height: MediaQuery.of(context).size.height,
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CourseBranchesAndIcon(
                      title: 'Latest Courses',
                      press: () {},
                      width: 125.0,
                    ),
                    getLatestCourse(),
                    CourseBranchesAndIcon(
                      title: 'Popular Courses',
                      press: () {},
                      width: 110.0,
                    ),
                    SizedBox(height: 3 * SizeConfig1.heightMultiplier),
                    PopularListView(),
                    CourseBranchesAndIcon(
                      title: 'Recommended Courses',
                      press: () {},
                      width: 30.0,
                    ),
                    SizedBox(height: 3 * SizeConfig1.heightMultiplier),
                    RecommendedListView(),
                    SizedBox(
                      height: 4.45 * SizeConfig1.heightMultiplier,
                    ),
                  ],
                ),
              ),
              //  ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getCategoryList() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 3.45 * SizeConfig1.heightMultiplier),
          CategoryListView(),
        ],
      ),
    );
  }

  Widget getLatestCourse() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 3.45 * SizeConfig1.heightMultiplier),
          LatestListView(),
        ],
      ),
    );
  }

  Widget getPopularCourses() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 3.45 * SizeConfig1.heightMultiplier),
          PopularListView(),
        ],
      ),
    );
  }

  Widget getRecommendedCourse() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 3.45 * SizeConfig1.heightMultiplier),
          RecommendedListView(),
        ],
      ),
    );
  }

  // Cant be moved to another folder or a new dart file cause of this current  context..
  // its using this current environment  thats y its in the current curly brace
  //===========the Curve shape appBar========================
  Widget getFlexibleSpaceAppBar() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Stack(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 35 * SizeConfig1.heightMultiplier,
                  width: double.infinity,
                  color: kPrimraryColor,
                ),
              ),
              Positioned(
                bottom: 40,
                right: 0,
                child: Row(
                  children: [
                    Container(
                      height: 12 * SizeConfig1.imageSizeMultiplier,
                      width: 12 * SizeConfig1.imageSizeMultiplier,
                      child: Image.asset("assets/home/nature.png"),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  getAppBarUi(),
                  getSearchBarUi(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CourseBranchesAndIcon extends StatelessWidget {
  const CourseBranchesAndIcon({
    Key key,
    this.title,
    this.press,
    this.width,
  }) : super(key: key);

  final String title;
  final Function press;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, left: 18, right: 6),
          child: Container(
            height: 30,
            width: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.black,
                border: Border.all(
                  color: Colors.black,
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              //left: 18,
              top: MediaQuery.of(context).padding.top),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: TextStyle(
                    letterSpacing: 1.2,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 2.8 * SizeConfig1.textMultiplier),
              ),
              SizedBox(
                width: width,
              ),
              GestureDetector(
                onTap: press,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    right: 18,
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: kPrimraryColor,
                    size: 2.5 * SizeConfig1.heightMultiplier,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

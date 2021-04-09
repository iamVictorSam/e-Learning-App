import 'package:flutter/material.dart';
import 'package:nimihub/Models/categoryList.dart';
import 'package:nimihub/screens/home/components/category/category_list_ui.dart';
import 'package:nimihub/sizeConfig1.dart';

class CategoryListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.2 * SizeConfig1.heightMultiplier,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: catergoryList.length,
        itemBuilder: (context, index) {
          return CategoryListUi(
            category: catergoryList[index],
          );
        },
      ),
    );
  }
}

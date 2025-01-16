import 'package:e_comm_food/models/food.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {

  final TabController tabController;

  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCatagoryTabs(){
    return FoodCategory.values.map((catagory) {
      return Tab(
        text: catagory.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController,
      tabs:_buildCatagoryTabs(),
      ),
    );
  }
}
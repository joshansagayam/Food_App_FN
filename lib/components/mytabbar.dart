import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class Mytabbar extends StatelessWidget {
  final TabController tabController;
  const Mytabbar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return Foodcategory.values.map((category) {
      // Extracting just the enum value's name
      return Tab(text: category.toString().split('.').last);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, tabs: _buildCategoryTabs()),
    );
  }
}

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/components/mycurrentlocation.dart';
import 'package:food_app/components/mydescriptionbox.dart';
import 'package:food_app/components/mydrawer.dart';
import 'package:food_app/components/myfoodtitle.dart';
import 'package:food_app/components/mysilverappbar.dart';
import 'package:food_app/components/mytabbar.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/resturant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: Foodcategory.values.length, vsync: this);
  }

  // Sort out and return a list of food that belongs to a specific category
  List<Food> _filtermenubycategory(Foodcategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

// return list of foods in given category
  List<Widget> getFoodinthiscategory(List<Food> fullMenu) {
    return Foodcategory.values.map((category) {
      //get category menu

      List<Food> categoryMenu = _filtermenubycategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          //get individual food

          final food = categoryMenu[index];
          //return food title UI
          return Myfoodtitle(
            food: food,
            ontap: () {},
          );
        },
      );
    }).toList(); // Convert the Iterable to a List
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          const Mydrawer(), // Add 'const' for better performance if possible
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          Mysilverappbar(
            title: Mytabbar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // Current location
                Mycurrentlocation(),
                // Description box
                Mydescriptionbox(),
              ],
            ),
          ),
        ],
        body: Consumer<Resturant>(
          builder: (context, resturant, child) => TabBarView(
            controller: _tabController,
            children: getFoodinthiscategory(resturant.menu),
          ),
        ),
      ),
    );
  }
}

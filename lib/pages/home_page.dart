import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:gourmetx/components/drawer.dart';
import 'package:gourmetx/components/my_silver_appbar.dart';
import 'package:gourmetx/components/current_location.dart';
import 'package:gourmetx/components/description.dart';
import 'package:gourmetx/components/tabbar.dart';
import 'package:gourmetx/models/food.dart';
import 'package:gourmetx/models/restaurant.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gourmetx/components/foodTile.dart';
import 'package:gourmetx/pages/food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();

  }


  //Return a list of food item that belong to a Specific Category.
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where((food) =>  food.category == category).toList();
  }

  //Return List of Food Items in a given category.
  List<Widget> getFoodInThisCategory(List<Food> fullMenu){

    return FoodCategory.values.map((category){

      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero ,
          itemBuilder: (context , index){

          //To get Individual Food item
          final food = categoryMenu[index];
            //Returns Food Tile
            return FoodTile(
                food: food,
                onTap: () => Navigator.push(
                    context ,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food)
                    ),
                ),
            );
          }
      );
    }).toList();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppbar(
          title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),


                  //My Current Location
                  const MyCurrentLocation(),

                  //Description
                  const MyDescriptionBox(),


                ],
              ),
          ),
        ],
        body: Consumer<Restaurant>(
            builder: (context ,restaurant, child) =>TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(restaurant.menu)
            ),
        ),
      ),
    );
  }
}


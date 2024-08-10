import 'package:flutter/material.dart';
import 'package:gourmetx/models/food.dart';
import 'package:gourmetx/models/restaurant.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectAddons = {};

  FoodPage({
    Key? key,
    required this.food,
  }) {
    //Initialize the selected Addons as False.
    for (Addon addon in food.availableAddons) {
      selectAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //Method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Scaffold
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Food Image
                Image.asset(
                  widget.food.imagePath,
                  height: 200, // Adjust height as needed
                  width: double.infinity, // Take full width
                  fit: BoxFit.cover, // Cover the entire area
                ),
                SizedBox(height: 16), // Add spacing between image and text

                // Food Name
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    widget.food.name,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),

                //Food Price
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '\$${widget.food.price.toString()}',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 24),
                  ),
                ),

                // Food Description
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    widget.food.description,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 16),
                Divider(
                  color: Colors.white,
                ),

                //Addons Heading
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Add-ons",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),

                // Addons
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 300, // Adjust height as needed
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                              value: widget.selectAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectAddons[addon] = value!;
                                });
                              },
                              title: Text(
                                addon.name,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                '\$ ${widget.food.availableAddons[index].price.toString()}',
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 8), // Additional space at the bottom
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 16),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  child: ElevatedButton(
                    onPressed: () =>
                        addToCart(widget.food, widget.selectAddons),
                    child: Text('Add to Cart'),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),

        //Back Button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

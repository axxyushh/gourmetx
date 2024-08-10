import 'package:flutter/material.dart';
import 'package:gourmetx/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  FoodTile({
    Key? key,
    required this.food,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$' + food.price.toString(),
                    style: TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  SizedBox(height: 4),
                  Text(
                    food.description,
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16), // Adjust as needed for spacing between text and image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset(
                  food.imagePath,
                  fit: BoxFit.cover, // Ensure the image covers the entire area
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


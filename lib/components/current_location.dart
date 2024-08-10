import 'package:flutter/material.dart';
import 'package:gourmetx/models/restaurant.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/painting/text_style.dart';

class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({super.key});

  @override
  _MyCurrentLocationState createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {
  // Create a TextEditingController to capture the address input
  final TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller to free up resources
    _addressController.dispose();
    super.dispose();
  }

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Your Location",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        content: TextField(
          style: TextStyle(color: Colors.white),
          controller: _addressController,
          cursorColor: Colors.blue,
          decoration: const InputDecoration(
            hintText: "Enter address",
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          // Cancel Button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ),
          ),
          // Save Button
          MaterialButton(
            onPressed: () {
              // Update the address in the Restaurant model
              context.read<Restaurant>().updateDeliveryAddress(_addressController.text);
              Navigator.pop(context);
            },
            child: const Text(
              "Save",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver at",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () {
              openLocationSearchBox(context);
            },
            child: Row(
              children: [
                // Address
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress.isNotEmpty
                        ? restaurant.deliveryAddress
                        : "Tap to enter address",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Dropdown Menu Icon
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gourmetx/models/restaurant.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate estimated delivery time
    DateTime estimatedDeliveryTime = DateTime.now().add(const Duration(minutes: 45));

    // Format the estimated delivery time
    String formattedTime = DateFormat('yyyy-MM-dd – kk:mm').format(estimatedDeliveryTime);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Thank you for your order.",
              style: TextStyle(color: Colors.white,fontSize: 20),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(25),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) => Text(
                  restaurant.displayCartReceipt(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Text(
              "Estimated delivery time is: $formattedTime",
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

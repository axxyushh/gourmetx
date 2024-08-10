//My Version

// import 'package:flutter/material.dart';
// import 'package:gourmetx/components/receipt.dart';
// import 'package:provider/provider.dart';
// import 'package:gourmetx/services/database/firestore.dart';
// import 'package:gourmetx/models/restaurant.dart';
//
// class DeliveryProgressPage extends StatefulWidget {
//   const DeliveryProgressPage({Key? key}) : super(key: key);
//
//   @override
//   _DeliveryProgressPageState createState() => _DeliveryProgressPageState();
// }
//
// class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
//   final FirestoreService db = FirestoreService();
//
//   @override
//   void initState() {
//     super.initState();
//     String receipt = context.read<Restaurant>().displayCartReceipt();
//     db.saveOrderToDatabase(receipt);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//       ),
//       bottomNavigationBar: _buildBottomNavBar(context),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               MyReceipt(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Custom Bottom Navbar - Message/Call Delivery Driver
//   Widget _buildBottomNavBar(BuildContext context) {
//     return Container(
//       height: 100,
//       decoration: BoxDecoration(
//         color: Theme.of(context).colorScheme.secondary,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(40),
//           topRight: Radius.circular(40),
//         ),
//       ),
//       padding: const EdgeInsets.all(25),
//       child: Row(
//         children: [
//           // Profile Picture
//           Container(
//             decoration: BoxDecoration(
//               color: Theme.of(context).colorScheme.background,
//               shape: BoxShape.circle,
//             ),
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.person,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const SizedBox(width: 10),
//           // Driver Details
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 "Eric",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Theme.of(context).colorScheme.onSecondary,
//                 ),
//               ),
//               const Text(
//                 "Driver",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//           const Spacer(),
//           Row(
//             children: [
//               // Message Button
//               Container(
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.background,
//                   shape: BoxShape.circle,
//                 ),
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.message,
//                     color: Colors.grey,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 10),
//               // Call Button
//               Container(
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).colorScheme.background,
//                   shape: BoxShape.circle,
//                 ),
//                 child: IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.call,
//                     color: Colors.green,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:gourmetx/components/receipt.dart';
import 'package:provider/provider.dart';
import 'package:gourmetx/services/database/firestore.dart';
import 'package:gourmetx/models/restaurant.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({Key? key}) : super(key: key);

  @override
  _DeliveryProgressPageState createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  final FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();
    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);

    // Wait for 7 seconds and then show the order confirmed animation
    Future.delayed(const Duration(seconds: 3), () {
      _showOrderConfirmedDialog();
    });
  }

  void _showOrderConfirmedDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Order Confirmed!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              const SizedBox(height: 20),
              // Animation or Icon
              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
            ],
          ),
        );
      },
    );

    // Close the dialog after 2 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pop(); // Close the dialog
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              MyReceipt(),
            ],
          ),
        ),
      ),
    );
  }

  // Custom Bottom Navbar - Message/Call Delivery Driver
  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          // Profile Picture
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          // Driver Details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Eric",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              const Text(
                "Driver",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              // Message Button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Call Button
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
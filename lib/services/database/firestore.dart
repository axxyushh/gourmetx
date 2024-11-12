import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get collection of orders.
  final CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  // Save order to DB.
  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),  // Use DateTime.now() to get the current date and time
      'order': receipt,
    });
  }
}

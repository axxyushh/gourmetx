// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
// import 'package:gourmetx/pages/delivery_progress_page.dart';
// import 'package:gourmetx/components/button.dart';
//
// class PaymentPage extends StatefulWidget {
//   const PaymentPage({super.key});
//
//   @override
//   State<PaymentPage> createState() => _PaymentPageState();
// }
//
// class _PaymentPageState extends State<PaymentPage> {
//
//   GlobalKey<FormState> formKey =  GlobalKey<FormState>();
//   String cardNumber = '';
//   String expiryDate = '';
//   String cardHolderName = '';
//   String cvvCode = '';
//   bool isCvvFocused = false;
//
//   //User Wants To pay
//
//   void userTappedPay()
//   {
//     if(formKey.currentState!.validate())
//       {
//         //Only Show dialog when form is valid
//         showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//               title: const Text("Confirm Payment",style: TextStyle(color: Colors.white),),
//               content: SingleChildScrollView(
//                 child: ListBody(
//                   children: [
//                     Text("Card Number: $cardNumber",style: TextStyle(color: Colors.white)),
//                     Text("Expiry Date: $expiryDate",style: TextStyle(color: Colors.white)),
//                     Text("Card Holder Name: $cardHolderName",style: TextStyle(color: Colors.white)),
//                     Text("CVV: $cvvCode",style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//               ),
//               actions: [
//
//                 //Cancel Button
//                 TextButton(
//                     onPressed: () => Navigator.pop(context),
//                     child: Text("Cancel"),
//                 ),
//
//                 //Yes Button
//                 TextButton(
//                   onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => DeliveryProgressPage(),)),
//                   child: Text("Yes"),
//                 ),
//
//               ],
//             ),
//         );
//
//       }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         title: Text("Checkout",style: TextStyle(color: Colors.white),),
//       ),
//       body: Column(
//         children: [
//           //Credit Card
//           CreditCardWidget(
//               cardNumber: cardNumber,
//               expiryDate: expiryDate,
//               cardHolderName: cardHolderName,
//               cvvCode: cvvCode,
//               showBackView: isCvvFocused ,
//               onCreditCardWidgetChange: (p0){},
//           ),
//
//
//
//
//           //Credit Card Form
//           CreditCardForm(
//               cardNumber: cardNumber,
//               expiryDate: expiryDate,
//               cardHolderName: cardHolderName,
//               cvvCode: cvvCode,
//               onCreditCardModelChange: (data){
//                 setState(() {
//                   cardNumber = data.cardNumber;
//                   expiryDate = data.expiryDate;
//                   cardHolderName = data.cardHolderName;
//                   cvvCode = data.cvvCode;
//                 });
//               },
//               formKey: formKey,
//           ),
//
//           Spacer(),
//
//           MyButton(
//               onTap: userTappedPay,
//               text: "Pay Now",
//           ),
//
//           const SizedBox(height: 25,),
//
//
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:gourmetx/pages/delivery_progress_page.dart';
import 'package:gourmetx/components/button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  GlobalKey<FormState> formKey =  GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  //User Wants To pay
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      //Only Show dialog when form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            "Confirm Payment",
            style: TextStyle(color: Colors.white),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  "Card Number: $cardNumber",
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  "Expiry Date: $expiryDate",
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  "Card Holder Name: $cardHolderName",
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  "CVV: $cvvCode",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          actions: [
            //Cancel Button
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            //Yes Button
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeliveryProgressPage(),
                ),
              ),
              child: const Text("Yes"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Checkout",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //Credit Card
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            const SizedBox(height: 20), // Add some spacing

            //Credit Card Form
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey,
            ),
            const SizedBox(height: 20), // Add some spacing

            MyButton(
              onTap: userTappedPay,
              text: "Pay Now",
            ),

            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

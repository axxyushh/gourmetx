import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );

    var mySeondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Delivery Fee
          Column(
            children: [
              Text("\$2.99" , style: myPrimaryTextStyle,),
              Text("Delivery Fee" , style: mySeondaryTextStyle,)
            ],
          ),


          //Delivery Time
          Column(
            children: [
              Text("20 - 45 mins" , style: myPrimaryTextStyle ,),
              Text("Delivey Time" , style: mySeondaryTextStyle,),
            ],
          )

        ],
      ),
    );
  }
}

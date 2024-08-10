import 'package:flutter/material.dart';
import 'package:gourmetx/models/restaurant.dart';
import 'package:provider/provider.dart';
import 'package:gourmetx/components/my_cart_tile.dart';
import 'package:gourmetx/components/button.dart';
import 'package:gourmetx/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child){
      //cart
      final userCart = restaurant.cart;


      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [

            //Clear cart button
            IconButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Sure you wanna clear the cart?",style: TextStyle(color: Colors.white),),
                        actions: [

                          //Cancel Button
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel",style: TextStyle(color: Colors.white),),
                          ),

                          //Yes Button
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                            child: const Text("Yes",style: TextStyle(color: Colors.white),),
                          ),


                        ],
                      )
                  );
                },
                icon: const Icon(Icons.delete),
            ),


          ],
          ),
        body: Column(
          children: [

            //List of Cart
            Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty? Expanded(child: Center(child: Text("Cart is Empty..",style: TextStyle(color: Colors.white,fontSize: 20),),)) : Expanded(
                      child:  ListView.builder(
                          itemCount: userCart.length ,
                          itemBuilder: (context, index){

                            //Get individual tile item
                            final cartItem = userCart[index];



                            //Return cart tile UI
                            return MyCartTile(cartItem: cartItem);

                          }
                      ),
                    ),
                  ],
                ),
            ),


            //Button To pay
            MyButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentPage(),
                    ),
                ),
                text: "Checkout"
            ),

            const SizedBox(height: 25,)

          ],
        ),
      );

    }
    );
  }
}

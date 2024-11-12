import 'package:flutter/material.dart';
import 'package:gourmetx/pages/cart_page.dart';

class MySilverAppbar extends StatelessWidget {

  final Widget child;
  final Widget title;


  const MySilverAppbar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      expandedHeight: 340,
      collapsedHeight: 120,
      pinned: true,
      backgroundColor:Colors.white,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        //Cart Button
        IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage(),),);
            },
            icon: const Icon(Icons.shopping_cart),
        )
      ],
      title: const Text(
          "Dine Delight",
          style: TextStyle(
            fontFamily: "assets",
          ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}

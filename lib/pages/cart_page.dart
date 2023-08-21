import 'package:dribble/components/button.dart';
import 'package:dribble/models/food.dart';
import 'package:dribble/models/shop.dart';
import 'package:dribble/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove from cart
  void removeFromCart(Food food, BuildContext context) {
    // get access to shop
    final shop = context.read<Shop>();

    // remove from cart

    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: primaryColor,
              appBar: AppBar(
                title: const Text('My Cart'),
                elevation: 0,
                backgroundColor: primaryColor,
              ),
              body: Column(
                // customer cart
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.cart.length,
                        itemBuilder: (context, index) {
                          // get food from cart
                          final Food food = value.cart[index];

                          // get food name
                          final String foodName = food.name;
                          // get food price
                          final String foodPrice = food.price;

                          // return list tile
                          return Container(
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(8)),
                            margin: const EdgeInsets.only(
                                left: 20, top: 20, right: 20),
                            child: ListTile(
                              title: Text(
                                foodName,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                foodPrice,
                                style: TextStyle(color: Colors.grey.shade200),
                              ),
                              trailing: IconButton(
                                  onPressed: () =>
                                      removeFromCart(food, context),
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.grey.shade300,
                                  )),
                            ),
                          );
                        }),
                  ),

                  // pay button
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: MyButton(text: "Pay Now", onTap: () {}),
                  )
                ],
              ),
            ));
  }
}

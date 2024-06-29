import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class Myfoodtitle extends StatelessWidget {
  final Food food;
  final void Function()? ontap;

  const Myfoodtitle({
    super.key,
    required this.food,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                          '\$${food.price.toString()}'), // Fixed the string interpolation
                      Text(food.description),
                    ],
                  ),
                ),
                //food image
                Image.asset(food.imagepath, height: 120),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

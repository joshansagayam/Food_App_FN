import 'package:flutter/material.dart';

class Mydescriptionbox extends StatelessWidget {
  const Mydescriptionbox({super.key});

  @override
  Widget build(BuildContext context) {
    //textstyle
    var myPrimarytextstyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondarytextstyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
              Text(
                "\$0.99",
                style: myPrimarytextstyle,
              ),
              Text(
                "Delivery fee",
                style: mySecondarytextstyle,
              ),
            ],
          ),
          //delivery time
          Column(
            children: [
              Text(
                "15-20min",
                style: myPrimarytextstyle,
              ),
              Text(
                "Delivery Time",
                style: mySecondarytextstyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

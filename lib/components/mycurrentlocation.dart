import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mycurrentlocation extends StatelessWidget {
  const Mycurrentlocation({super.key});
  void openlocationsearchbox(BuildContext contex) {
    showDialog(
      context: contex,
      builder: (contex) => AlertDialog(
        title: Text("Your Location"),
        content: TextField(
          decoration: InputDecoration(hintText: "Search address.."),
        ),
        actions: [
          //cancel but
          MaterialButton(
            onPressed: () => Navigator.pop(contex),
            child: const Text("Cancel"),
          ),
          //save button
          MaterialButton(
              onPressed: () => Navigator.pop(contex),
              child: const Text("Save")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openlocationsearchbox(context),
            child: Row(
              children: [
                //address
                Text(
                  'no-14,mosque street ',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //dropdownmenue
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}

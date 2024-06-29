import 'package:flutter/material.dart';

class Mydrawertile extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;

  const Mydrawertile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        onTap: onTap,
      ),
    );
  }
}

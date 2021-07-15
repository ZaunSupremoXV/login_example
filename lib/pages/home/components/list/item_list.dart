import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String value;
  const ItemList({
    Key? key,
    required this.color,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 50,
        ),
        SizedBox(width: 10),
        Text(title),
        Text(value),
      ],
    );
  }
}

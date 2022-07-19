import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.description})
      : super(key: key);

  final String name;
  final double price;
  final String imagePath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 30,
        ),
        title: Text(
          name,
          style: const TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(fontSize: 16),
        ),
        trailing: Text(
          '\$$price',
          style: TextStyle(color: Colors.orange.shade900, fontSize: 17),
        ),
      ),
    );
  }
}

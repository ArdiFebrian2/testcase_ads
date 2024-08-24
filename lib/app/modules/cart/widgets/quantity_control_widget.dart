import 'package:flutter/material.dart';

class QuantityControlWidget extends StatelessWidget {
  final int quantity;

  const QuantityControlWidget({Key? key, required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40, // Set the width
          height: 40, // Set the height
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey, // Background color for the icon button
          ),
          child: IconButton(
            onPressed: () {
              // Decrease quantity
            },
            icon: const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Icon(Icons.remove, color: Colors.white)],
            ), // Adjusted the icon size and color
            iconSize: 20, // Icon size inside the button
          ),
        ),
        const SizedBox(width: 5), // Adding space between the buttons and text
        Text(
          '$quantity',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(width: 5),
        Container(
          width: 40, // Set the width
          height: 40, // Set the height
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue, // Background color for the icon button
          ),
          child: IconButton(
            onPressed: () {
              // Increase quantity
            },
            icon: const Icon(Icons.add,
                color: Colors.white), // Adjusted the icon size and color
            iconSize: 20, // Icon size inside the button
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'quantity_control_widget.dart';

class CartItemWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final int price;
  final int quantity;

  const CartItemWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.asset(imageUrl, width: 50, height: 50),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(subtitle, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8),
                  Text('Rp $price',
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            QuantityControlWidget(quantity: quantity),
            IconButton(
              onPressed: () {
                // Logic to remove item
              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}

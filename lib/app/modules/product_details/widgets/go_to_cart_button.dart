import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoToCartButton extends StatelessWidget {
  const GoToCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed('/cart');
          // Add to cart functionality
        },
        child: const Text(
          'GO TO CART',
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF0F3759),
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
          textStyle: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

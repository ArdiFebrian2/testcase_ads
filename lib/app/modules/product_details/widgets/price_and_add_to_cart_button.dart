import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PriceAndAddToCartButton extends StatelessWidget {
  const PriceAndAddToCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Rp 56.000',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(Icons.add, color: Colors.teal),
              const SizedBox(width: 5),
              Text(
                'Add to cart',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

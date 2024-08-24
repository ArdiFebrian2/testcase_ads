import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String assetImagePath; // Changed to asset image path
  final double rating;

  const ProductCard({
    required this.name,
    required this.price,
    required this.assetImagePath, // Changed to asset image path
    required this.rating,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligned to the left
        children: [
          Image.asset(assetImagePath, height: 100), // Using asset image
          const SizedBox(height: 8),
          Text(
            name,
            style: GoogleFonts.overpass(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            maxLines: 2, // Limiting the product name to 2 lines
            overflow: TextOverflow.ellipsis, // Ellipsis for overflow
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: GoogleFonts.overpass(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // Aligned to the right
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: Colors.teal.shade400,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.white, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: GoogleFonts.overpass(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

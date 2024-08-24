import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandCard extends StatelessWidget {
  final String imagePath;
  final String brandName;

  const BrandCard({
    required this.imagePath,
    required this.brandName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 8),
        Text(
          brandName,
          style: GoogleFonts.overpass(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

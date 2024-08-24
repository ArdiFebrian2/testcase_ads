import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressOptionWidget extends StatelessWidget {
  final String title;
  final String address;
  final String number;
  final bool selected;
  final VoidCallback? onEdit;

  const AddressOptionWidget({
    Key? key,
    required this.title,
    required this.address,
    required this.number,
    required this.selected,
    this.onEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Radio<bool>(
          value: selected,
          groupValue: true,
          onChanged: (bool? value) {},
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              number,
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        subtitle: Text(
          address,
          style: GoogleFonts.overpass(
            textStyle: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.edit, color: Colors.grey),
          onPressed: onEdit,
        ),
      ),
    );
  }
}

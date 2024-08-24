import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodOptionWidget extends StatelessWidget {
  final String title;
  final String logoPath;
  final bool selected;
  final VoidCallback? onSelected;

  const PaymentMethodOptionWidget({
    Key? key,
    required this.title,
    required this.logoPath,
    this.selected = false,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        logoPath,
        width: 40,
        height: 40,
      ),
      title: Text(
        title,
        style: GoogleFonts.overpass(
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      trailing: Radio<bool>(
        value: selected,
        groupValue: true,
        onChanged: (bool? value) {},
      ),
      onTap: onSelected,
    );
  }
}

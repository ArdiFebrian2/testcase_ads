import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text(
        'Etiam mollis metus non purus',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

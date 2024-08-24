import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Product Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Interdum et malesuada fames ac ante ipsum primis in faucibus. '
            'Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id '
            'egestas a, pretium vel tellus. Praesent feugiat diam et amet pulvinar '
            'finibus. Etiam et nisi aliquet, accumsan nisi sit.',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

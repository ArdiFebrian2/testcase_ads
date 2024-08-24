import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/go_to_cart_button.dart';
import '../widgets/package_options.dart';
import '../widgets/price_and_add_to_cart_button.dart';
import '../widgets/product_description.dart';
import '../widgets/product_details.dart';
import '../widgets/product_image.dart';
import '../widgets/product_title.dart';
import '../widgets/ratings_and_reviews.dart';
import '../widgets/review_example.dart';

class ProductDetailsController extends GetxController {
  // Your controller's logic here if needed
}

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProductTitle(),
            SizedBox(height: 8),
            ProductDescription(),
            SizedBox(height: 16),
            ProductImage(),
            SizedBox(height: 16),
            PriceAndAddToCartButton(),
            SizedBox(height: 10),
            PackageOptions(),
            SizedBox(height: 16),
            ProductDetails(),
            SizedBox(height: 16),
            RatingsAndReviews(),
            SizedBox(height: 16),
            ReviewExample(),
            SizedBox(height: 16),
            GoToCartButton(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag),
        ),
      ],
    );
  }
}

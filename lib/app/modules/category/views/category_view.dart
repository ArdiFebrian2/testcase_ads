import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/category_controller.dart';
import '../widgets/category_item.dart';
import '../widgets/product_item.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diabetes Care',
          style:
              GoogleFonts.overpass(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Banner
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  // Full-Screen Image
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/banner.png",
                      fit: BoxFit
                          .cover, // Ensures the image covers the entire container
                    ),
                  ),
                  // Text on top of the image
                  Positioned(
                    left: 16,
                    top: 20,
                    child: Text(
                      "Save extra on every order",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 50,
                    child: Text(
                      "Etiam mollis metus non faucibus sollicitudin.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Diabetic Diet Section
            Text(
              'Diabetic Diet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CategoryItem(
                  title: 'Sugar \nSubstitute',
                  imageUrl: 'assets/images/obat.png',
                ),
                CategoryItem(
                  title: 'Juices & \nVinegars',
                  imageUrl: 'assets/images/obat2.png',
                ),
                CategoryItem(
                  title: 'Vitamins \nMedicines',
                  imageUrl: 'assets/images/obat3.png',
                ),
              ],
            ),
            const SizedBox(height: 20),
            // All Products Section
            Text(
              'All Products',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: const [
                ProductItem(
                  imageUrl: 'assets/images/product.png',
                  title: 'Accu-check Active Test Strip',
                  price: 'Rp 112.000',
                  rating: 4.2,
                  sale: true,
                ),
                ProductItem(
                  imageUrl: 'assets/images/product2.png',
                  title: 'Omron HEM-8712 BP Monitor',
                  price: 'Rp 150.000',
                  rating: 4.2,
                  discount: true,
                ),
                ProductItem(
                  imageUrl: 'assets/images/product3.png',
                  title: 'Accu-check Active Test Strip',
                  price: 'Rp 112.000',
                  rating: 4.2,
                ),
                ProductItem(
                  imageUrl: 'assets/images/product4.png',
                  title: 'Omron HEM-8712 BP Monitor',
                  price: 'Rp 150.000',
                  rating: 4.2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

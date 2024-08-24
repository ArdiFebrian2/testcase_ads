import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../checkout/views/checkout_view.dart';
import '../controllers/cart_controller.dart';
import '../widgets/cart_item_widget.dart';
import '../widgets/coupon_widget.dart';
import '../widgets/payment_summary_widget.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your cart',
          style: GoogleFonts.overpass(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row untuk teks "2 item in your cart" dan "Add more"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2 items in your cart',
                  style: GoogleFonts.overpass(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Logic to add more items
                  },
                  child: Text(
                    'Add more',
                    style: GoogleFonts.overpass(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView(
                children: [
                  CartItemWidget(
                    imageUrl: 'assets/images/cart1.png',
                    title: 'Sugar free gold',
                    subtitle: 'bottle of 500 pellets',
                    price: 25000,
                    quantity: 1,
                  ),
                  CartItemWidget(
                    imageUrl: 'assets/images/cart2.png',
                    title: 'Sugar free gold',
                    subtitle: 'bottle of 500 pellets',
                    price: 18000,
                    quantity: 1,
                  ),
                  const SizedBox(height: 16),
                  const CouponWidget(),
                  const SizedBox(height: 16),
                  PaymentSummaryWidget(
                    orderTotal: 228800,
                    itemsDiscount: 28800,
                    couponDiscount: 15800,
                    shipping: 'Free',
                    total: 185000,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.to(() => CheckoutView());
                // Logic to place order
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0F3759),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Place Order @ Rp 185.000',
                style: GoogleFonts.overpass(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

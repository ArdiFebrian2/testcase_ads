import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/checkout_controller.dart';
import '../widgets/address_option_widget.dart';
import '../widgets/payment_method_option_widget.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: GoogleFonts.overpass(
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0), // Menambahkan padding untuk menyelaraskan
                  child: Text(
                    '2 Items in your cart',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TOTAL',
                      style: GoogleFonts.overpass(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Rp 185.000',
                      style: GoogleFonts.overpass(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Delivery Address',
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            AddressOptionWidget(
              title: 'Home',
              number: '021941489234',
              address: 'Jl. Rajawali No. 02, Surabaya',
              selected: true,
              onEdit: () {},
            ),
            AddressOptionWidget(
              title: 'Office',
              address: 'Jl. Gajah Mada No. 05, Sidoarjo',
              number: '021941489234',
              selected: false,
              onEdit: () {},
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.add, color: Colors.teal),
                const SizedBox(width: 5),
                Text(
                  'Add Address',
                  style: GoogleFonts.overpass(
                    textStyle: const TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Payment method',
              style: GoogleFonts.overpass(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    PaymentMethodOptionWidget(
                      title: 'OVO',
                      logoPath: 'assets/images/ovo.png',
                      selected: true,
                      onSelected: () {},
                    ),
                    PaymentMethodOptionWidget(
                      title: 'Dana',
                      logoPath: 'assets/images/dana.png',
                      selected: false,
                      onSelected: () {},
                    ),
                    PaymentMethodOptionWidget(
                      title: 'ShopeePay',
                      logoPath: 'assets/images/shopeepay 1.png',
                      selected: false,
                      onSelected: () {},
                    ),
                    PaymentMethodOptionWidget(
                      title: 'GoPay',
                      logoPath: 'assets/images/gopay.png',
                      selected: false,
                      onSelected: () {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/success');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0F3759),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: const Size.fromHeight(50),
              ),
              child: Text(
                'Pay Now Rp 185.000',
                style: GoogleFonts.overpass(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

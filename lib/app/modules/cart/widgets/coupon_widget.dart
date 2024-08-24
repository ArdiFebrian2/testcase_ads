import 'package:flutter/material.dart';

class CouponWidget extends StatelessWidget {
  const CouponWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(.0),
        child: Row(
          children: [
            const Icon(Icons.local_offer, color: Colors.green),
            const SizedBox(width: 15),
            const Text('1 Coupon applied'),
            const Spacer(),
            IconButton(
              onPressed: () {
                // Logic to remove coupon
              },
              icon: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}

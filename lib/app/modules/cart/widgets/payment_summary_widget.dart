import 'package:flutter/material.dart';
import 'summary_row.dart';

class PaymentSummaryWidget extends StatelessWidget {
  final int orderTotal;
  final int itemsDiscount;
  final int couponDiscount;
  final String shipping;
  final int total;

  const PaymentSummaryWidget({
    Key? key,
    required this.orderTotal,
    required this.itemsDiscount,
    required this.couponDiscount,
    required this.shipping,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SummaryRow(label: 'Order Total', value: 'Rp $orderTotal'),
            SummaryRow(label: 'Items Discount', value: '- Rp $itemsDiscount'),
            SummaryRow(label: 'Coupon Discount', value: '- Rp $couponDiscount'),
            SummaryRow(label: 'Shipping', value: shipping),
            const Divider(),
            SummaryRow(
              label: 'Total',
              value: 'Rp $total',
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              valueStyle: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PackageOptions extends StatelessWidget {
  const PackageOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Package size',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              _buildPackageOption('Rp.252.000 \n500pallets'),
              const SizedBox(width: 8),
              _buildPackageOption('Rp 100.000 \n110 pellets'),
              const SizedBox(width: 8),
              _buildPackageOption('Rp 160.000 \n250 pellets'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPackageOption(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text),
    );
  }
}

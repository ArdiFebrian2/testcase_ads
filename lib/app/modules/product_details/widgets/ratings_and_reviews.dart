import 'package:flutter/material.dart';

class RatingsAndReviews extends StatelessWidget {
  const RatingsAndReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '4.4',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              Text('923 Ratings and \n257 Reviews'),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRatingBar(5, 67),
            _buildRatingBar(4, 20),
            _buildRatingBar(3, 7),
            _buildRatingBar(2, 0),
            _buildRatingBar(1, 2),
          ],
        ),
      ],
    );
  }

  Widget _buildRatingBar(int stars, int percentage) {
    return Row(
      children: [
        Text('$stars ★'),
        const SizedBox(width: 8),
        Container(
          width: 150,
          height: 8,
          color: Colors.grey.shade300,
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: percentage / 100,
            heightFactor: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text('$percentage%'),
      ],
    );
  }
}

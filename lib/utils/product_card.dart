import 'package:flutter/material.dart';

class ProductDetailCard extends StatelessWidget {
  final String imagePath;
  const ProductDetailCard({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFD9D8D7),
                width: 5,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
          //pricing and rating
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "US\$4.50",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Color(0xFF929292),
                ),
              ],
            ),
          ),
          const Text(
            "Quality Shirt XL",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          Row(
            children: List.generate(
              5,
              (index) {
                return Icon(
                  Icons.star,
                  color: index < 3
                      ? const Color(0xFFFB761C)
                      : const Color(0xFFD9D9D9),
                  size: 18,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

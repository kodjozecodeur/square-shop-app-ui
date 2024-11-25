import 'package:flutter/material.dart';

class SellerItem extends StatelessWidget {
  final String description;
  final String imgPt;
  const SellerItem({super.key, required this.description, required this.imgPt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          //Image
          Container(
            height: 150,
            decoration: const BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imgPt,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //text
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final String imgpth;
  final String descrpt;
  const CategoryItems({
    super.key,
    required this.imgpth,
    required this.descrpt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                  Color(0xFFEBEBEB),
                ],
              ),
            ),
            child: Image.asset(
              imgpth,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            descrpt,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

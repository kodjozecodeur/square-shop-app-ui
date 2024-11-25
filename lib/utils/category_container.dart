import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  final Color backgroundColor;
  final double imageSize;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const CategoryContainer({
    super.key,
    required this.text,
    required this.imagePath,
    required this.backgroundColor,
    this.imageSize = 40,
    this.borderRadius = 8,
    this.padding = const EdgeInsets.only(
      left: 5,
      right: 5,
      top: 10,
      bottom: 10,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              imagePath,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}

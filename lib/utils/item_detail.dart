import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            items: [
              Image.asset("assets/images/shoes-view.png"),
              Image.asset("assets/images/shoes-left.png"),
              Image.asset("assets/images/shoes-right.png"),
            ],
            options: CarouselOptions(
              height: 200,
              enableInfiniteScroll: true,
              viewportFraction: 1.0,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          //product title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Fashion Adidas",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) {
                          return Icon(
                            Icons.star,
                            color: index < 3 ? Colors.orange : Colors.grey,
                            size: 16,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "US\$42",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFE7E7E7),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize
                          .min, // This ensures the Row wraps its content
                      children: [
                        Icon(Icons.shopping_cart),
                        SizedBox(width: 5),
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

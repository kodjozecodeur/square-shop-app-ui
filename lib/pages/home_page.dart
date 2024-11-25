import 'package:flutter/material.dart';
import 'package:square_shop_app_ui/pages/categorie_page.dart';
import 'package:square_shop_app_ui/utils/ads_tile.dart';
import 'package:square_shop_app_ui/utils/category_container.dart';
import 'package:square_shop_app_ui/utils/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textField(),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Hello, Susie",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            categoryItems(),
            const SizedBox(
              height: 12,
            ),
            const AdsTile(),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Trending deals for you",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CategoryPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xFF673AB7),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductDetailCard(
                    imagePath: 'assets/images/shirt.png',
                  ),
                  ProductDetailCard(
                    imagePath: 'assets/images/product-shoes.png',
                  ),
                  ProductDetailCard(
                    imagePath: 'assets/images/shirt.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView categoryItems() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryContainer(
            text: 'All\nCategories',
            imagePath: 'assets/images/category.png',
            backgroundColor: Color(0xFF390099),
          ),
          CategoryContainer(
            text: 'Our\nSuggestions',
            imagePath: 'assets/images/star.png',
            backgroundColor: Color(0xFFFB7921),
          ),
          CategoryContainer(
            text: 'Our\nSuggestions',
            imagePath: 'assets/images/star.png',
            backgroundColor: Color(0xFFFB7921),
          ),
        ],
      ),
    );
  }

  Padding textField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFFEAEAEA),
          border: Border.all(
            color: const Color(0xFFEAEAEA),
          ),
        ),
        child: const TextField(
          decoration: InputDecoration(
            hintText: "Search by keyword",
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 12),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

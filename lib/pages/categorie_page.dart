import 'package:flutter/material.dart';
import 'package:square_shop_app_ui/pages/product_detail_page.dart';
import 'package:square_shop_app_ui/utils/category_items.dart';
import 'package:square_shop_app_ui/utils/seller_item.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        shadowColor: const Color(0xFF333333),
        elevation: 1,
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left)),
        title: const Text(
          "All categories",
          style: TextStyle(),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          //filter button
          Row(
            children: [
              filterButton(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFF673AB7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductView(),
                      ),
                    );
                  },
                  child: const CategoryItems(
                    imgpth: 'assets/images/shirt.png',
                    descrpt: 'Shirts',
                  ),
                ),
                const CategoryItems(
                  imgpth: 'assets/images/product-shoes.png',
                  descrpt: 'Shoes',
                ),
                const CategoryItems(
                  imgpth: 'assets/images/shirt.png',
                  descrpt: 'Apparels',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Sellers",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: Color(0xFF673AB7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SellerItem(
                  description: 'Featured Nike',
                  imgPt: 'assets/images/sketch-shoes.png',
                ),
                SellerItem(
                  description: 'Sunglasses',
                  imgPt: 'assets/images/sunglasses.png',
                ),
                SellerItem(
                  description: 'Apparels',
                  imgPt: 'assets/images/apparels.png',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding filterButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
          mainAxisSize:
              MainAxisSize.min, // This ensures the Row wraps its content
          children: [
            Icon(Icons.tune_rounded),
            SizedBox(width: 5),
            Text(
              "Filters",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

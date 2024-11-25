import 'package:flutter/material.dart';
import 'package:square_shop_app_ui/utils/item_detail.dart';
import 'package:square_shop_app_ui/utils/text_field.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left)),
        shadowColor: const Color(0xFF333333),
        elevation: 1,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Text(
          "Shoes",
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(),
            const ItemDetail(),
            //horizontal divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: 1,
                color: const Color(0xFFF2F2F2),
              ),
            ),
            const ItemDetail(),
            const ItemDetail(),
          ],
        ),
      ),
    );
  }
}

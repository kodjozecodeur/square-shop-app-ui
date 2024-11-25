import 'package:flutter/material.dart';
import 'package:square_shop_app_ui/pages/home_page.dart';
import 'package:square_shop_app_ui/utils/button_sample.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //image
              Container(
                height: screenSize.height * 0.30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/shoplogo.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //Intro text
              const Text(
                "Explore and Shop \n effortlessly",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //intro paragraph
              const Text(
                textAlign: TextAlign.center,
                "Square helps you get in touch with amazing\n stores without an effort",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              //Login + sign
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ButtonSample(text: "Sign up"),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text(
                  "Log Into Square",
                  style: TextStyle(
                    color: Color(0xFF390099),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

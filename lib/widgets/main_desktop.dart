import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenSize.height * 0.85,
      constraints: const BoxConstraints(minHeight: 350.0, maxHeight: 800),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi,",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const Text(
                "I'm Alexander",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const Text(
                "A Software Developer",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 230,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in Touch"),
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/yo.jpg"),
          ),
        ],
      ),
    );
  }
}

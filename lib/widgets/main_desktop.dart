import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/widgets/projects_section.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Alexander Naranjo",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.yellowPrimary,
                ),
              ),
              const Text(
                "A Software Developer",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 230,
                height: 40,
                child: ElevatedButton(
                  onPressed: ProjectsSection(),
                  child: const Text("Get in Touch"),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/yo.jpg"),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Image(
                    image: AssetImage("assets/linkeldn.png"),
                    width: 60,
                    height: 60,
                  ),
                  Image(
                    image: AssetImage("assets/github.png"),
                    width: 45,
                    height: 45,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

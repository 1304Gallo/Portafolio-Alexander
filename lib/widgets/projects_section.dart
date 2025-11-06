
import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.maxFinite,
      color: const Color.fromARGB(255, 37, 146, 201),
      child: Column(
        children: [
          const Text(
            "Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          Card(
            color: CustomColor.bgLightk,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    "Picta",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "A Cuban platform for audiovisual content.",
                    style: TextStyle(
                      color: CustomColor.whiteSecondary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "www.picta.cu",
                      style: TextStyle(
                        color: CustomColor.yellowSecondary,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

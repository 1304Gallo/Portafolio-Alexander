
import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Dart",
      "Python",
      "JavaScript",
      "TypeScript",
    ];
    final frameworks = [
      "Flutter",
      "Django",
      "Django REST Framework",
      "Angular",
    ];
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.maxFinite,
      color: CustomColor.bgLightk,
      child: Column(
        children: [
          const Text(
            "What I can do",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Languages
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Programming Languages",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  for (final skill in skills)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        skill,
                        style: const TextStyle(
                          color: CustomColor.whiteSecondary,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(width: 50),
              // Frameworks
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Frameworks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  for (final framework in frameworks)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        framework,
                        style: const TextStyle(
                          color: CustomColor.whiteSecondary,
                        ),
                      ),
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

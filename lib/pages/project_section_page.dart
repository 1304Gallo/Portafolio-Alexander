import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/components/card_projects.dart';

class ProjectSectionPage extends StatelessWidget {
  const ProjectSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.maxFinite,
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
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CardProjects(
                    title: "Picta",
                    imagePath: "assets/images/picta.png",
                    description: "plataforma de contenidos audiovisuales",
                    techTags: const [
                      "python",
                      "Django",
                      "Django RESTframework",
                      "PostgreSQL",
                    ],
                    onVisitLink: () {},
                    onGithubLink: () {},
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  CardProjects(
                    title: "Picta",
                    imagePath: "assets/images/picta.png",
                    description: "plataforma de contenidos audiovisuales",
                    techTags: const [
                      "python",
                      "Django",
                      "Django RESTframework",
                      "PostgreSQL",
                    ],
                    onVisitLink: () {},
                    onGithubLink: () {},
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  CardProjects(
                    title: "Picta",
                    imagePath: "assets/images/picta.png",
                    description: "plataforma de contenidos audiovisuales",
                    techTags: const [
                      "python",
                      "Django",
                      "Django RESTframework",
                      "PostgreSQL",
                    ],
                    onVisitLink: () {},
                    onGithubLink: () {},
                  ),
                ],
              ),
              SizedBox(width: 20),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/components/card_projects.dart';

class ProjectSectionPage extends StatelessWidget {
  const ProjectSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: screenWidth,
      height: screenHeight,
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
              Expanded(
                child: Column(
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
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    CardProjects(
                      title: "Akademos-Mined",
                      imagePath: "assets/images/akademos.JPG",
                      description:
                          "Sistema de gestion academica, para instituciones educativas del Mined",
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
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    CardProjects(
                      title: "ProviProf",
                      imagePath: "assets/images/picta.png",
                      description: "plataforma de contenidos audiovisuales",
                      techTags: const ["Flutter", "Dart"],
                      onVisitLink: () {},
                      onGithubLink: () {},
                    ),
                  ],
                ),
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

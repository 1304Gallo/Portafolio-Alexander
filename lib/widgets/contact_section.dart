import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.maxFinite,
      color: CustomColor.scaffoldBg,
      child: Column(
        children: [
          const Text(
            "Contact",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "alex980413@gmail.com",
            style: TextStyle(color: CustomColor.whiteSecondary, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

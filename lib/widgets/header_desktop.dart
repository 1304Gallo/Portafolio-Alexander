import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/nav_items.dart';
import 'package:portafolio/styles/styles.dart';
import 'package:portafolio/widgets/side_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavTap});
  final Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      width: double.maxFinite,
      decoration: headerDecoration,
      child: Row(
        children: [
          SideLogo(onTap: () {
            onNavTap(0);
          }),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () => {onNavTap(i)},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

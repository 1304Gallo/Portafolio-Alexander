import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenWidth * 0.8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: [
                        CustomColor.scaffoldBg.withAlpha(153),
                        CustomColor.scaffoldBg.withAlpha(153),
                      ],
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcATop,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/yo.jpg"),
                  ),
                ),
                const SizedBox(height: 30),
                //intro text
                Text(
                  "Hi,\nI'm Alexander\nA Software Developer",
                  style: TextStyle(
                    fontSize: 24,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                //btn
                const SizedBox(height: 15),
                SizedBox(
                  width: 190,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Get in Touch"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

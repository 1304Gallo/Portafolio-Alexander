import 'package:flutter/material.dart';
import 'package:portafolio/constants/size.dart';
import 'package:portafolio/widgets/main_desktop.dart';
import 'package:portafolio/widgets/main_mobile.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth >= KMinDesktopWidth
            ? const MainDesktop()
            : const MainMobile();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portafolio/styles/styles.dart';
import 'package:portafolio/widgets/side_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: headerDecoration,
      child: Row(
        children: [
          SideLogo(onTap: onLogoTap),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu)),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}

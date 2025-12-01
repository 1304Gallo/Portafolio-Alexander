import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/nav_items.dart';


class DrawerMobile extends StatelessWidget {
  final Function(int) onNavTap;

  const DrawerMobile({super.key, required this.onNavTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++) _listTitle(context, i),
        ],
      ),
    );
  }

  ListTile _listTitle(BuildContext context, int i) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 30),
      titleTextStyle: const TextStyle(
        color: CustomColor.whitePrimary,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      onTap: () => onNavTap(i),
      leading: Icon(navIcons[i]),
      title: Text(navTitles[i]),
    );
  }
}

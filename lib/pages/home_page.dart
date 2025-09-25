import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/nav_items.dart';
import 'package:portafolio/styles/styles.dart';
import 'package:portafolio/widgets/header_desktop.dart';
import 'package:portafolio/widgets/header_mobile.dart';
import 'package:portafolio/widgets/side_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main
          // HeaderDesktop(),
          HeaderMobile(onMenuTap: () {}),
          //Skills
          Container(height: 500, width: double.maxFinite),
          //PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //CONTACTS
          Container(height: 500, width: double.maxFinite),
          //FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}

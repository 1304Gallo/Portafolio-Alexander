import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

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
          Container(
            height: 500,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, CustomColor.bgLightk],
              ),
            ),
            child: Row(
              children: [
                Text("AK"),
                Spacer(),
                for (int i = 0; i < 5; i++)
                  TextButton(onPressed: () {}, child: Text("buttom")),
              ],
            ),
          ),
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

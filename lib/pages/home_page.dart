import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/size.dart';
import 'package:portafolio/widgets/drawer_mobile.dart';
import 'package:portafolio/widgets/header_desktop.dart';
import 'package:portafolio/widgets/header_mobile.dart';
import 'package:portafolio/widgets/main_desktop.dart';
import 'package:portafolio/widgets/main_mobile.dart';
import 'package:portafolio/widgets/projects_section.dart';
import 'package:portafolio/widgets/skills_section.dart';
import 'package:portafolio/widgets/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldkey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= KMinDesktopWidth
              ? null
              : const DrawerMbile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Main
              if (constraints.maxWidth >= KMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldkey.currentState?.openEndDrawer();
                    // Scaffold.of(context).openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= KMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

              //Skills
              const SkillsSection(),
              //PROJECTS
              const ProjectsSection(),
              //CONTACTS
              const ContactSection(),
              //FOOTER
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ),
        );
      },
    );
  }
}

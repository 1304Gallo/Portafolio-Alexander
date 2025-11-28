import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/size.dart';
import 'package:portafolio/pages/project_section_page.dart';
import 'package:portafolio/widgets/drawer_mobile.dart';
import 'package:portafolio/widgets/header_desktop.dart';
import 'package:portafolio/widgets/header_mobile.dart';
import 'package:portafolio/pages/home_section_page.dart';
import 'package:portafolio/widgets/skills_section.dart';
import 'package:portafolio/widgets/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void _scrollToSection(int index) {
    final keys = [homeKey, skillsKey, projectsKey, contactKey];
    final context = keys[index].currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    if (scaffoldkey.currentState?.isEndDrawerOpen ?? false) {
      Navigator.of(context!).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldkey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= KMinDesktopWidth
              ? null
              : DrawerMbile(onNavTap: _scrollToSection),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Main
              if (constraints.maxWidth >= KMinDesktopWidth)
                HeaderDesktop(onNavTap: _scrollToSection)
              else
                HeaderMobile(
                  onLogoTap: () => _scrollToSection(0),
                  onMenuTap: () {
                    scaffoldkey.currentState?.openEndDrawer();
                  },
                ),
              HomeSection(key: homeKey),
              //Skills
              SkillsSection(key: skillsKey),
              //PROJECTS
              ProjectSectionPage(key: projectsKey),
              //CONTACTS
              ContactSection(key: contactKey),
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

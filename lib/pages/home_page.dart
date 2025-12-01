import 'package:flutter/material.dart';
import 'package:portafolio/constants/size.dart';
import 'package:portafolio/pages/project_section_page.dart';
import 'package:portafolio/widgets/drawer_mobile.dart';
import 'package:portafolio/widgets/header_desktop.dart';
import 'package:portafolio/widgets/header_mobile.dart';
import 'package:portafolio/pages/home_section_page.dart';
import 'package:portafolio/widgets/skills_section.dart';
import 'package:portafolio/utils/notifications.dart';
import 'package:portafolio/widgets/contact_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();
  final _sectionKeys = <int, GlobalKey>{};

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      _sectionKeys[i] = GlobalKey();
    }
  }

  void scrollToSection(int index) {
    if (_sectionKeys.containsKey(index)) {
      Scrollable.ensureVisible(
        _sectionKeys[index]!.currentContext!,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(37, 39, 52, 1),
          endDrawer: constraints.maxWidth >= KMinDesktopWidth
              ? null
              : DrawerMobile(onNavTap: scrollToSection),
          body: NotificationListener<ScrollToSectionNotification>(
            onNotification: (notification) {
              scrollToSection(notification.sectionIndex);
              return true;
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  //Main
                  if (constraints.maxWidth >= KMinDesktopWidth)
                    HeaderDesktop(onNavTap: scrollToSection)
                  else
                    HeaderMobile(
                      onLogoTap: () => scrollToSection(0),
                      onMenuTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    ),
                  Container(
                    key: _sectionKeys[0],
                    child: const HomeSection(),
                  ),
                  //Skills
                  SkillsSection(key: _sectionKeys[1]),
                  //PROJECTS
                  ProjectSectionPage(key: _sectionKeys[2]),
                  //CONTACTS
                  ContactSection(key: _sectionKeys[3]),
                  //FOOTER
                  Container(
                    key: _sectionKeys[4],
                    height: 500,
                    width: double.maxFinite,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

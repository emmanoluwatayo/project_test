import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_test/config/app_colors.dart';
import 'package:project_test/config/helper_style.dart';
import 'package:project_test/screens/home_page/home_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;

  List _pages = [
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: PsColors.mainColor,
        ),
        child: BottomNavigationBar(
          backgroundColor: PsColors.whiteColor,
          currentIndex: _selectedTab,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          onTap: (index) => _changeTab(index),
          selectedItemColor: Colors.green,
          unselectedItemColor: PsColors.blackColor,
          showUnselectedLabels: true,
          selectedLabelStyle: HelperStyle.textStyleTwo(
              context, PsColors.whiteColor, 12, FontWeight.w700),
          unselectedFontSize: 12,
          unselectedLabelStyle: HelperStyle.textStyleTwo(
              context, PsColors.whiteColor, 12, FontWeight.w400),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline_sharp),
              label: "Bookmark",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Favourite",
            ),
          ],
        ),
      ),
    );
  }
}

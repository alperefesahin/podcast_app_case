import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: BottomNavigationBar(
        unselectedItemColor: navigationBarUnselectedItemsColor,
        selectedItemColor: percentageIndicatorForegroundColor,
        backgroundColor: pageBackgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (int index) {},
        items: const [
          BottomNavigationBarItem(
            backgroundColor: pageBackgroundColor,
            icon: Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Icon(
                CupertinoIcons.play_rectangle_fill,
                color: percentageIndicatorForegroundColor,
              ),
            ),
            label: home,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: search),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.antenna_radiowaves_left_right), label: live),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: profile),
        ],
      ),
    );
  }
}

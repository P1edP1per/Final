import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dastan_final_project/home_page.dart';
import 'package:dastan_final_project/restoran.dart';
import 'package:flutter/material.dart';

import 'beer_info.dart';

class DataProvider extends ChangeNotifier {
  var _bottomNavIndex = 0;
  List<Widget> _pages = [Home(), RestoranPage()];
  List<Widget> get pages => _pages;
  get bottomNavIndex => _bottomNavIndex;

  setBottomNavIndex(value) {
    _bottomNavIndex = value;
    notifyListeners();
  }
}

const kBottomNavIconList = <IconData>[
  Icons.home,
  Icons.description,
];

AnimatedBottomNavigationBar getBottomBar(DataProvider provider, context) {
  // DataProvider dataProvider = Provider.of<DataProvider>(context);
  return AnimatedBottomNavigationBar(
    icons: kBottomNavIconList,
    inactiveColor: Colors.indigo,
    activeColor: Colors.red,
    gapLocation: GapLocation.none,
    activeIndex: provider._bottomNavIndex,
    onTap: (index) => provider.setBottomNavIndex(index),
  );
}

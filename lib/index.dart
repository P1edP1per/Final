import 'package:dastan_final_project/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    DataProvider dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
        bottomNavigationBar: getBottomBar(dataProvider, context),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text('Top Beer',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
        body: dataProvider.pages[dataProvider.bottomNavIndex]);
  }
}

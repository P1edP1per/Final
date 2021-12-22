import 'dart:convert';

import 'package:dastan_final_project/provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'home_page.dart';
import 'index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DataProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainPage(),
        ));
  }
}

import 'package:flutter/material.dart';

class AnimationsRoute extends PageRouteBuilder {
  final Widget page;

  AnimationsRoute({required this.page})
      : super(
          // set name here
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
          transitionDuration: Duration(milliseconds: 600),
        );
}

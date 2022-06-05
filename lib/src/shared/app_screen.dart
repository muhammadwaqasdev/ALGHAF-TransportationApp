import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppScreen extends StatelessWidget {
  final PreferredSizeWidget? appbar;
  final Widget body;
  final Widget? bottomNavBar;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  const AppScreen(
      {Key? key,
      this.appbar,
      required this.body,
      this.padding,
        this.color,
      this.bottomNavBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: color ?? AppColors.lightGrey,
        appBar: appbar,
        body: Padding(
          padding: padding ??
              EdgeInsets.fromLTRB(
                0,
                0,
                0,
                0,
              ),
          child: body,
        ),
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}

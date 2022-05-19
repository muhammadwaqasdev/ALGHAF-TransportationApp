import 'package:AlGhaf/src/app/admin_app_view.dart';
import 'package:AlGhaf/src/app/user_app_view.dart';
import 'package:AlGhaf/src/configs/app_setup.locator.dart';
import 'package:AlGhaf/src/services/local/flavor_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // getting package
  final package = await PackageInfo.fromPlatform();

  setupLocator();

  // app flavor init
  FlavorService.init(package);

  runApp(AdminAppView());
}

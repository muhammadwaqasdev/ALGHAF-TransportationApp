import 'package:al_ghaf/src/app/admin_app_view.dart';
import 'package:al_ghaf/src/app/user_app_view.dart';
import 'package:al_ghaf/src/configs/app_setup.locator.dart';
import 'package:al_ghaf/src/services/local/flavor_service.dart';
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

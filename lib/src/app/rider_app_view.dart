import 'package:AlGhaf/src/base/utils/constants.dart';
import 'package:AlGhaf/src/services/local/main_drawer_service.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/views/rider/car_rider/car_rider_drawer_main/car_rider_drawer_main_view.dart';
import 'package:AlGhaf/src/views/rider/rider_splash/rider_splash_view.dart';
import 'package:flutter/material.dart';

class RiderAppView extends StatelessWidget implements MainDrawerService {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.riderAppTitle,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavService.onGenerateRoute,
      navigatorKey: NavService.key,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(),
          fontFamily: 'Poppins'),
      home: RiderSplashView(),
      builder: (context, child) {
        return Navigator(
          onGenerateRoute: (setting) => MaterialPageRoute(
              builder: (_) => Scaffold(
                drawer: RiderDrawerMainView(),
                body: Stack(
                  children: [
                    child!,
                  ],
                ),
              )),
        );
      },
    );
  }
}

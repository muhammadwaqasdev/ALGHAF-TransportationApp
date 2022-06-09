import 'package:AlGhaf/src/base/utils/constants.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/views/rider/bike_rider/bike_rider_drawer_main/bike_rider_drawer_main_view.dart';
import 'package:AlGhaf/src/views/rider/bike_rider/bike_rider_home/bike_rider_home_view.dart';
import 'package:AlGhaf/src/views/rider/rider_forgot_password/rider_forgot_password_view.dart';
import 'package:AlGhaf/src/views/rider/rider_signin/rider_signin_view.dart';
import 'package:AlGhaf/src/views/rider/rider_splash/rider_splash_view.dart';
import 'package:AlGhaf/src/views/user/splash/splash_view.dart';
import 'package:flutter/material.dart';

class RiderAppView extends StatelessWidget {
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
      home: BikeRiderHomeView(),
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

import 'package:AlGhaf/src/base/utils/constants.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/views/user/car_ride/request_texi/request_texi_view.dart';
import 'package:AlGhaf/src/views/user/drawer_main/drawer_main_view.dart';
import 'package:flutter/material.dart';

class UserAppView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: Constants.appTitle,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavService.onGenerateRoute,
      navigatorKey: NavService.key,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(),
          fontFamily: 'Poppins'),
      home: RequestTexiView(),

      builder: (context, child) {
        return Navigator(
          onGenerateRoute: (setting) => MaterialPageRoute(
              builder: (_) => Scaffold(
                drawer: DrawerMainView(),
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

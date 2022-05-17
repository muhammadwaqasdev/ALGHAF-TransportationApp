import 'package:al_ghaf/src/base/utils/constants.dart';
import 'package:al_ghaf/src/services/local/navigation_service.dart';
import 'package:al_ghaf/src/views/user/splash/splash_view.dart';
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
      home: SplashView(),
      builder: (context, child) {
        return Navigator(
          onGenerateRoute: (setting) => MaterialPageRoute(
              builder: (_) => Scaffold(
                    drawer: Text("Menu"),
                    body: Stack(
                      children: [child!],
                    ),
                  )),
        );
      },
    );
  }
}

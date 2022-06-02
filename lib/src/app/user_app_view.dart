import 'package:AlGhaf/src/base/utils/constants.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/views/user/car_ride/request_texi/request_texi_view.dart';
import 'package:AlGhaf/src/views/user/drawer_main/drawer_main_view.dart';
import 'package:flutter/material.dart';

class UserAppView extends StatefulWidget {
  @override
  State<UserAppView> createState() => _UserAppViewState();
}

class _UserAppViewState extends State<UserAppView> {

  late bool isDrawerOpen;
  late double xOffset;
  late double yOffset;
  late double scaleFactor;



  void open(){
    xOffset = 230;
    yOffset = 150;
    scaleFactor = 0.6;
    isDrawerOpen = true;
  }
  void close(){
    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen = false;
  }
  @override
  void initState() {
    close();
    super.initState();
  }
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

import 'package:AlGhaf/src/base/utils/constants.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
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
      home: Stack(
        children: [
          DrawerMainView(),
          GestureDetector(
            onTap: (){
              isDrawerOpen ? open() : null;
              setState(() {
              });
            },
            onHorizontalDragStart: (detail) {
              setState(() {
                isDrawerOpen = !isDrawerOpen;
              });
            },
            onHorizontalDragUpdate: (detail) {
              const delta = 1;
              if(detail.delta.dx > delta){
                setState(() {
                  open();
                });
                print(detail.delta.dx);
              }else if(detail.delta.dx < -delta){
                setState(() {
                  close();
                });
                print(detail.delta.dx);
              }
            },
            child: AnimatedContainer(
              transform: Matrix4.translationValues(xOffset, yOffset, 0)
                ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
              duration: Duration(milliseconds: 250),
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0),
                border: isDrawerOpen ? Border.all(color: AppColors.green,width: 8.0) : null,
              ),
              child: RequestTexiView(),
            ),
          ),
        ],
      ),

      builder: (context, child) {
        return Navigator(
          onGenerateRoute: (setting) => MaterialPageRoute(
              builder: (_) => Scaffold(
                // drawer: DrawerMainView(),
                //     onDrawerChanged: (val){
                //         val ?
                //         open() :
                //         close();
                //         setState(() {
                //
                //         });
                //     },
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

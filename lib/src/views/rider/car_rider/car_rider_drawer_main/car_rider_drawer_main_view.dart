import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/menu_list_tile.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/car_rider/car_rider_drawer_main/car_rider_drawer_main_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RiderDrawerMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RiderDrawerMainViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: context.screenSize().width,
                    height: context.screenSize().height / 2.5,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(138)),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                Assets.imagesLeftArrowWhite,
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                Assets.imagesRiderImage,
                                height: 96,
                                width: 96,
                              ),
                            ),
                            Text("Muhammad Waqas",
                                style: TextStyling.h3
                                    .copyWith(color: AppColors.white)),
                            Text("ABC-1234",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.green)),
                            Text("AED 35",
                                style: TextStyling.text
                                    .copyWith(color: AppColors.green)),
                          ],
                        ),
                        Container(
                          height: 5,
                          width: context.screenSize().width,
                          color: AppColors.green,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(
                        Assets.imagesMenuStacked,
                        width: 70,
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  children: [
                    MenuTile(title: "Home", onTap: () {
                      NavService.carRiderHome();
                    }),
                    MenuTile(title: "Ride", onTap: () {
                      NavService.searchingRide();
                    }),
                    MenuTile(title: "Account", onTap: () {
                      NavService.riderAccount();
                    }),
                    MenuTile(title: "Wallet", onTap: () {
                      NavService.riderWallet();
                    }),
                    MenuTile(title: "History", onTap: () {
                      NavService.riderHistory();
                    }),
                    MenuTile(title: "Notification", onTap: () {
                      NavService.riderHistory();
                    }),
                    MenuTile(title: "Logout", onTap: () {
                      NavService.riderSignIn();
                    }),
                  ],
                ),
              )
            ],
          ),
        ));
      },
      viewModelBuilder: () => RiderDrawerMainViewModel(),
    );
  }
}

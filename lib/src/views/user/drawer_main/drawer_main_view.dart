import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/menu_list_tile.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/drawer_main/drawer_main_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DrawerMainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DrawerMainViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: context.screenSize().width,
                      height: context.screenSize().width/3,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.imagesLeftArrowWhite,width: 20,height: 20,),
                            ],
                          ),
                          Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(Assets.imagesRiderImage,height: 120,width: 120,),
                              ),
                              Text("Muhammad Waqas",style: TextStyling.h4.copyWith(color: AppColors.white)),
                              Text("AED 35",style: TextStyling.text.copyWith(color: AppColors.grey)),
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
                    Image.asset(Assets.imagesMenuStacked,height: 100,width: 50,)
                  ],
                ),
                Column(
                  children: [
                    MenuTile(title: "Home", onTap: (){

                    }),
                    MenuTile(title: "Delivery Requests / History", onTap: (){}),
                    MenuTile(title: "Ride History", onTap: (){}),
                    MenuTile(title: "Booking History", onTap: (){}),
                    MenuTile(title: "Wallet", onTap: (){}),
                    MenuTile(title: "Account", onTap: (){}),
                    MenuTile(title: "Settings", onTap: (){}),
                    MenuTile(title: "Notification", onTap: (){}),
                    MenuTile(title: "Logout", onTap: (){}),
                  ],
                )

              ],
            )
        );
      },
      viewModelBuilder: () => DrawerMainViewModel(),
    );
  }
}

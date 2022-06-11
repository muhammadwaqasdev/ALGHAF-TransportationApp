import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/load_image.dart';
import 'package:AlGhaf/src/shared/menu_list_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/rider_account/rider_account_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RiderAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RiderAccountViewModel>.reactive(
        builder: (context, model, child) {
          return AppScreen(
              body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: AppColors.primary,
                    height: context.screenSize().height / 3,
                  ),
                  Container(
                    height: context.screenSize().height / 2.2,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              Assets.imagesMenuIcon,
                              height: 14,
                              width: 20,
                            ),
                          ],
                        ),
                        VerticalSpacing(),
                        Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Wallet Balance",
                                style: TextStyling.text
                                    .copyWith(color: AppColors.white),
                              ),
                              Text(
                                "240.000",
                                style: TextStyling.h3
                                    .copyWith(color: AppColors.white),
                              ),
                            ],
                          ),
                        ),
                        VerticalSpacing(18),
                        LoadImage(
                          "https://www.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png",
                          size: Size(134, 134),
                          hasPickOption: true,
                          isCircle: true,
                        ),
                        VerticalSpacing(13),
                        Text("Sule Abdul",style: TextStyling.h4,),
                        Text("Sabdulsule@mail.com",style: TextStyling.text.copyWith(color: AppColors.grey),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  children: [
                    AccountMenu(title: "Profile settings", onTap: (){}),
                    AccountMenu(title: "Password", onTap: (){}),
                    AccountMenu(title: "Vehicle details ", onTap: (){}),
                    AccountMenu(title: "Customer support", onTap: (){}),
                  ],
                ),
              )
            ],
          ));
        },
        viewModelBuilder: () => RiderAccountViewModel(),
        onModelReady: (model) => model.init());
  }
}




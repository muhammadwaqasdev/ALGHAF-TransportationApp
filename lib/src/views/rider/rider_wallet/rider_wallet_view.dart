import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/rider_wallet/rider_wallet_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RiderWalletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RiderWalletViewModel>.reactive(
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
                        Container(
                          height: 153,
                          width: context.screenSize().width /1.3,
                          decoration: BoxDecoration(
                            color: AppColors.primaryLight,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Deposit And Withdrawl",style: TextStyling.h3.copyWith(color: AppColors.white),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SmallButton(title: "Deposit", onTap: (){}, isPrimary: false,color: AppColors.white,textColor: AppColors.black,),
                                  SmallButton(title: "Withdrawl", onTap: (){}, isPrimary: false,color: AppColors.white,textColor: AppColors.black,),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ));
        },
        viewModelBuilder: () => RiderWalletViewModel(),
        onModelReady: (model) => model.init());
  }
}




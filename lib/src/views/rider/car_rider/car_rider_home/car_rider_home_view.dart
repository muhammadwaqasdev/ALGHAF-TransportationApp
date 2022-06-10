import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/rider/rider_ride_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/car_rider/car_rider_home/car_rider_home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CarRiderHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CarRiderHomeViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                            },
                            child: Image.asset(
                              Assets.imagesRiderUserAvatar,
                              height: 38,
                              width: 38,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(title: "Today", onTap: (){}, isSelected: true),
                          CustomButton(title: "Week", onTap: (){}, isSelected: false),
                          CustomButton(title: "Month", onTap: (){}, isSelected: false),
                          CustomButton(title: "All", onTap: (){}, isSelected: false),
                        ],
                      ),

                      Container(
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: AppColors.green),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("22\nTrips",textAlign: TextAlign.center,style: TextStyling.h4.copyWith(color: AppColors.green),),
                            Container(
                              width: 1,
                              height: 65,
                              color: AppColors.green,
                            ),
                            Text("11\nOnline",textAlign: TextAlign.center,style: TextStyling.h4.copyWith(color: AppColors.green),),
                            Container(
                              width: 1,
                              height: 65,
                              color: AppColors.green,
                            ),
                            Text("AED 500\nEarned",textAlign: TextAlign.center,style: TextStyling.h4.copyWith(color: AppColors.green),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              VerticalSpacing(15),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Today Trips",
                      style: TextStyling.h2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return RiderRideTile();
                    }),
              )
            ],
          ),
        ));
      },
      viewModelBuilder: () => CarRiderHomeViewModel(),
    );
  }
}

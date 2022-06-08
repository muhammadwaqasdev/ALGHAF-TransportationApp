import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/flight_booking/searched_flight/searched_flight_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SearchedFlightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchedFlightViewModel>.reactive(
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              Assets.imagesBackArrowBigWhite,
                              height: 18,
                              width: 28,
                            ),
                          ),
                        ],
                      ),
                      VerticalSpacing(50),
                      SizedBox(
                        width: context.screenSize().width / 1.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Karachi",
                                  style: TextStyling.h4
                                      .copyWith(color: AppColors.grey),
                                ),
                                Text(
                                  "KHI",
                                  style: TextStyling.h2
                                      .copyWith(color: AppColors.white),
                                ),
                              ],
                            ),
                            Image.asset(
                              Assets.imagesBothSideArrowWhite,
                              height: 25,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Dubai",
                                  style: TextStyling.h4
                                      .copyWith(color: AppColors.grey),
                                ),
                                Text(
                                  "DBX",
                                  style: TextStyling.h2
                                      .copyWith(color: AppColors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      VerticalSpacing(50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Adult 1",
                            style:
                                TextStyling.h4.copyWith(color: AppColors.white),
                          ),
                          Text(
                            "Economy",
                            style:
                                TextStyling.h4.copyWith(color: AppColors.white),
                          ),
                          Text(
                            "Aug 14 - Aug 19",
                            style:
                                TextStyling.h4.copyWith(color: AppColors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              VerticalSpacing(15),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "122 Results",
                      style: TextStyling.h2,
                    ),
                    Image.asset(
                      Assets.imagesPermeterVector,
                      height: 24,
                      width: 24,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 230,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [AppColors.boxShadow],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "04:30",
                                      style: TextStyling.h2,
                                    ),
                                    Text(
                                      "KHI",
                                      style: TextStyling.h4
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  Assets.imagesGroup,
                                  height: 30,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "06:30",
                                      style: TextStyling.h2,
                                    ),
                                    Text(
                                      "DBX",
                                      style: TextStyling.h4
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "07:30",
                                      style: TextStyling.h2,
                                    ),
                                    Text(
                                      "DBX",
                                      style: TextStyling.h4
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  Assets.imagesGroup,
                                  height: 30,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "09:30",
                                      style: TextStyling.h2,
                                    ),
                                    Text(
                                      "KHI",
                                      style: TextStyling.h4
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: AppColors.grey,
                              thickness: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  Assets.imagesEmiratesLogo,
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  "Cost: AED800",
                                  style: TextStyling.h2,
                                ),
                                SmallButton(
                                  title: "Select",
                                  onTap: () {},
                                  isPrimary: false,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
      },
      viewModelBuilder: () => SearchedFlightViewModel(),
    );
  }
}

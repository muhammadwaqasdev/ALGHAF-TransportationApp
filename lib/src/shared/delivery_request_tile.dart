import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class DeliveryRequestTileCard extends StatelessWidget {
  final bool isRequested;
  final bool isDelivered;

  const DeliveryRequestTileCard(
      {Key? key, required this.isRequested, this.isDelivered = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (isDelivered == false) ? NavService.bikeRiderStarted() : null;
      },
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              AppColors.boxShadow,
            ]),
        margin: EdgeInsets.only(bottom: 25, left: 20, right: 20),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.imagesStartlocation,
                      height: 20,
                      width: 8,
                    ),
                    HorizontalSpacing(5),
                    Text(
                      "Helden st",
                      style:
                          TextStyling.text.copyWith(color: AppColors.primary),
                    ),
                    HorizontalSpacing(20),
                    Image.asset(
                      Assets.imagesEndLocation,
                      height: 20,
                      width: 16,
                    ),
                    HorizontalSpacing(5),
                    Text(
                      "Chalotte St",
                      style:
                          TextStyling.text.copyWith(color: AppColors.primary),
                    ),
                  ],
                ),
                Text(
                  "AED 35",
                  style: TextStyling.text.copyWith(color: AppColors.green),
                )
              ],
            ),
            Divider(
              color: AppColors.primary,
              thickness: 2,
            ),
            isRequested
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              Assets.imagesRiderImage,
                              height: 58,
                              width: 58,
                            ),
                          ),
                          HorizontalSpacing(15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cihan soysakal",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.primary),
                              ),
                              Text(
                                "Toyota (EDF568-354)",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                      isDelivered
                          ? Text(
                              "Delivered",
                              style: TextStyling.h4
                                  .copyWith(color: AppColors.green),
                            )
                          : SmallButton(
                              title: "Call",
                              onTap: () {
                                NavService.callingToBikeRider();
                              },
                              isPrimary: true)
                    ],
                  )
                : Text(
                    "Waiting",
                    style: TextStyling.h4.copyWith(color: AppColors.grey),
                  ),
          ],
        ),
      ),
    );
  }
}

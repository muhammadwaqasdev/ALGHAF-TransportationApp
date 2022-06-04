import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/calling_to_bike_rider/calling_to_bike_rider_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CallingToBikeRiderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CallingToBikeRiderViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: Container(
          color: AppColors.primary,
          child: Column(
            children: [
              VerticalSpacing(context.screenSize().height / 5),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      Assets.imagesRiderImage,
                      height: 93,
                      width: 93,
                    ),
                  ),
                  Text(
                    "Muhammad Waqas",
                    style: TextStyling.h3.copyWith(color: AppColors.white),
                  ),
                  Text(
                    "Ringing...",
                    style: TextStyling.h4.copyWith(color: AppColors.blue),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.white),
                    child: Center(
                        child: Image.asset(
                      Assets.imagesSpeakerVector,
                      height: 24,
                      width: 24,
                    )),
                  ),
                  HorizontalSpacing(15),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.red),
                      child: Center(
                          child: Image.asset(
                        Assets.imagesCallVector,
                        height: 24,
                        width: 24,
                      )),
                    ),
                  ),
                ],
              ),
              VerticalSpacing(context.screenSize().height / 8),
            ],
          ),
        ));
      },
      viewModelBuilder: () => CallingToBikeRiderViewModel(),
    );
  }
}

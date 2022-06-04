import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/parcel_delivered/parcel_delivered_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ParcelDeliveredView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ParcelDeliveredViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: Container(
          color: AppColors.primary,
          width: context.screenSize().width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesThanksVector,
                height: context.screenSize().width / 2,
                width: context.screenSize().width / 2,
              ),
              Text(
                "Thank You\nFor Your Delivery!",
                textAlign: TextAlign.center,
                style: TextStyling.h2.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ));
      },
      viewModelBuilder: () => ParcelDeliveredViewModel(),
      onModelReady: (model) => model.init(),
    );
  }
}

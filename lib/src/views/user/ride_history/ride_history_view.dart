import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/ride_request_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/ride_history/ride_history_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RideHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RideHistoryViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            color: AppColors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  VerticalSpacing(60),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          Assets.imagesLeftArrowBlack,
                          width: 18,
                          height: 18,
                        ),
                        HorizontalSpacing(15),
                        Text(
                          "Your Rides Histories",
                          style: TextStyling.h3,
                        ),
                      ],
                    ),
                  ),
                  VerticalSpacing(40),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                  RideTileCard(),
                ],
              ),
            ));
      },
      viewModelBuilder: () => RideHistoryViewModel(),
    );
  }
}

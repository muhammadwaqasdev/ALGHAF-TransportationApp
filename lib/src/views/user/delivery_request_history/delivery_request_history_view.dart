import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/delivery_request_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/delivery_request_history/delivery_request_history_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DeliveryRequestsAndHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DeliveryRequestsAndHistoryViewModel>.reactive(
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
                          "Your Deliveries",
                          style: TextStyling.h3,
                        ),
                      ],
                    ),
                  ),
                  VerticalSpacing(40),
                  DeliveryRequestTileCard(
                    isRequested: true,
                  ),
                  DeliveryRequestTileCard(
                    isRequested: false,
                  ),
                  DeliveryRequestTileCard(
                    isRequested: true,
                  ),
                  DeliveryRequestTileCard(
                    isRequested: false,
                  ),
                  DeliveryRequestTileCard(
                    isRequested: true,
                    isDelivered: true,
                  ),
                  DeliveryRequestTileCard(
                    isRequested: true,
                    isDelivered: true,
                  ),
                  DeliveryRequestTileCard(
                    isRequested: true,
                    isDelivered: true,
                  ),
                  DeliveryRequestTileCard(
                    isRequested: true,
                    isDelivered: true,
                  ),
                ],
              ),
            ));
      },
      viewModelBuilder: () => DeliveryRequestsAndHistoryViewModel(),
    );
  }
}

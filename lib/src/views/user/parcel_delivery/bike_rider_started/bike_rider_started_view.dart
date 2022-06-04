import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/parcel_delivery/bike_rider_started/bike_rider_started_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class BikeRiderStartedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BikeRiderStartedViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
          body: AnimatedContainer(
            color: AppColors.grey,
            duration: Duration(seconds: 1),
            child: SlidingUpPanel(
              boxShadow: [
                BoxShadow(color: AppColors.primary),
              ],
              isDraggable: true,
              minHeight: 40,
              maxHeight: 250,
              backdropEnabled: false,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: AppColors.primary,
              panelBuilder: (controller) => AnimatedContainer(
                padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                duration: Duration(seconds: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Positioned(
                      left: context.screenSize().width / 2 - 50,
                      right: context.screenSize().width / 2 - 50,
                      top: 20,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 6,
                          width: 100,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ),
                    VerticalSpacing(20),
                    Row(
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
                                      .copyWith(color: AppColors.white),
                                ),
                                VerticalSpacing(),
                                Text(
                                  "Toyota (EDF568-354)",
                                  style: TextStyling.h4
                                      .copyWith(color: AppColors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              Assets.imagesStarVector,
                              height: 17,
                              width: 17,
                            ),
                            Text(
                              "4.4",
                              style: TextStyling.h4
                                  .copyWith(color: AppColors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                    VerticalSpacing(34),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.imagesClockVectorWhite,
                          height: 20,
                          width: 20,
                        ),
                        HorizontalSpacing(5),
                        Text(
                          "1h30m",
                          style:
                              TextStyling.h4.copyWith(color: AppColors.white),
                        ),
                        HorizontalSpacing(5),
                        Text(
                          "left",
                          style: TextStyling.h4.copyWith(color: AppColors.red),
                        ),
                      ],
                    ),
                    VerticalSpacing(10),
                    MainButton(
                      title: "Call",
                      isPrimary: false,
                      onTap: () {
                        NavService.callingToBikeRider();
                      },
                      borderRadius: 12,
                    ),
                  ],
                ),
              ),
              body: Stack(
                children: [
                  GoogleMap(
                    myLocationButtonEnabled: true,
                    zoomControlsEnabled: false,
                    initialCameraPosition: model.initialCameraPosition,
                    onMapCreated: (controller) =>
                        model.mapController = controller,
                    // markers: {
                    //   if (model.originLocation != null) model.origin,
                    //   if (model.destinationLocation != null) model.destination
                    // },
                    // polylines: {model.directionPolyline},
                    onLongPress: (val) {
                      print(val);
                    },
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 67, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          Assets.imagesMenuIcon,
                          height: 18,
                          width: 28,
                        ),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        Assets.imagesScooterVector,
                        height: 50,
                        width: 50,
                      )),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => BikeRiderStartedViewModel(),
      onModelReady: (model) => model.init(),
    );
  }
}

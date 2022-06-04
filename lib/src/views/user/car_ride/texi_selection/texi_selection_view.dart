import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/rider_contact_card.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/car_ride/texi_selection/texi_selection_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class TexiSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TexiSelectionViewModel>.reactive(
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
              maxHeight: (model.isRiderReady == true)
                  ? 400
                  : context.screenSize().height - 100,
              backdropEnabled: false,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: AppColors.primary,
              panelBuilder: (controller) => (model.isRiderReady == true)
                  ? AnimatedContainer(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Assets.imagesStartlocation,
                                height: 20,
                                width: 8,
                              ),
                              HorizontalSpacing(5),
                              Text(
                                "Helden st",
                                style: TextStyling.text
                                    .copyWith(color: AppColors.white),
                              ),
                              HorizontalSpacing(),
                              Container(
                                height: 15,
                                width: 2,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              HorizontalSpacing(),
                              Image.asset(
                                Assets.imagesEndLocation,
                                height: 20,
                                width: 16,
                              ),
                              HorizontalSpacing(5),
                              Text(
                                "Chalotte St",
                                style: TextStyling.text
                                    .copyWith(color: AppColors.white),
                              ),
                            ],
                          ),
                          VerticalSpacing(26),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "34 Km",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.white),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    Assets.imagesClockVectorWhite,
                                    height: 20,
                                    width: 20,
                                  ),
                                  HorizontalSpacing(5),
                                  Text(
                                    "1h30m",
                                    style: TextStyling.h4
                                        .copyWith(color: AppColors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          VerticalSpacing(34),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Assets.imagesMoneyVectorWhite,
                                height: 20,
                                width: 20,
                              ),
                              HorizontalSpacing(5),
                              Text(
                                "\$45.20",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.white),
                              ),
                            ],
                          ),
                          VerticalSpacing(34),
                          Text(
                            "30 Sec",
                            style:
                                TextStyling.h4.copyWith(color: AppColors.red),
                          ),
                          MainButton(
                            title: "Continue",
                            isPrimary: false,
                            onTap: () {
                              NavService.rideStarted();
                            },
                            borderRadius: 12,
                          ),
                        ],
                      ),
                    )
                  : AnimatedContainer(
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
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Riders",
                                      style: TextStyling.h2
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ],
                                ),
                                VerticalSpacing(30),
                                RiderContactCard(),
                                RiderContactCard(),
                                RiderContactCard(),
                                RiderContactCard(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              body: Stack(
                children: [
                  GoogleMap(
                    myLocationButtonEnabled: true,
                    zoomControlsEnabled: true,
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
                        Assets.imagesPolilineWithVehecle,
                        height: context.screenSize().width - 50,
                        width: context.screenSize().width - 50,
                      )),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => TexiSelectionViewModel(),
      onModelReady: (model) => model.init(),
    );
  }
}

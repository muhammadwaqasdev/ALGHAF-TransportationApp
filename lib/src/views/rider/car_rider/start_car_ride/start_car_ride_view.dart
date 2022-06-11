import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/car_rider/start_car_ride/start_car_ride_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class StartCarRideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartCarRideViewModel>.reactive(
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
              maxHeight: 227,
              backdropEnabled: false,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              color: AppColors.primary,
              panelBuilder: (controller) {
                return (model.isRideOnRequest)
                    ? AnimatedContainer(
                        padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                        duration: Duration(seconds: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Positioned(
                              left: context.screenSize().width / 2 - 15,
                              right: context.screenSize().width / 2 - 15,
                              top: 20,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 4,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              ),
                            ),
                            VerticalSpacing(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        Assets.imagesRiderImage,
                                        height: 70,
                                        width: 70,
                                      ),
                                    ),
                                    Text(
                                      "Alan Sanusi",
                                      style: TextStyling.h4
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              Assets.imagesLocationWhite,
                                              height: 20,
                                              width: 20,
                                            ),
                                            HorizontalSpacing(5),
                                            Text(
                                              "34 Km",
                                              style: TextStyling.h4.copyWith(
                                                  color: AppColors.white),
                                            )
                                          ],
                                        ),
                                        HorizontalSpacing(20),
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
                                              style: TextStyling.h4.copyWith(
                                                  color: AppColors.white),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    VerticalSpacing(34),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SmallButton(title: "Reject", onTap: (){
                                  NavService.searchingRide();
                                }, isPrimary: false,color: AppColors.red,),
                                Image.asset(Assets.imagesTimer,height: 40,width: 40,),
                                SmallButton(title: "Accept", onTap: (){
                                  model.isRideOnRequest = false;
                                  model.isRideAccepted = true;
                                  model.notifyListeners();
                                  model.SetArrivedAtPickup();
                                }, isPrimary: false,),
                              ],
                            ),
                          ],
                        ),
                      )
                    : (model.isRideAccepted)
                            ? AnimatedContainer(
                      padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                      duration: Duration(seconds: 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Positioned(
                            left: context.screenSize().width / 2 - 15,
                            right: context.screenSize().width / 2 - 15,
                            top: 20,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 4,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            ),
                          ),
                          VerticalSpacing(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      Assets.imagesRiderImage,
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                  Text(
                                    "Alan Sanusi",
                                    style: TextStyling.h4
                                        .copyWith(color: AppColors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            Assets.imagesLocationWhite,
                                            height: 20,
                                            width: 20,
                                          ),
                                          HorizontalSpacing(5),
                                          Text(
                                            "34 Km",
                                            style: TextStyling.h4.copyWith(
                                                color: AppColors.white),
                                          )
                                        ],
                                      ),
                                      HorizontalSpacing(20),
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
                                            style: TextStyling.h4.copyWith(
                                                color: AppColors.white),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  VerticalSpacing(34),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
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
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Image.asset(Assets.imagesCallVectorRider,height: 33,width: 33,),
                                  HorizontalSpacing(),
                                  Image.asset(Assets.imagesMsgVector,height: 33,width: 33,),
                                ],
                              ),
                              SmallButton(title: "Cancel", onTap: () async {
                                NavService.searchingRide();
                              }, isPrimary: false,color: AppColors.red,),
                            ],
                          ),
                        ],
                      ),
                    )
                            : (model.isRiderArrivedForPickUp)
                                      ? AnimatedContainer(
                                    padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                                    duration: Duration(seconds: 1),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Positioned(
                                          left: context.screenSize().width / 2 - 15,
                                          right: context.screenSize().width / 2 - 15,
                                          top: 20,
                                          child: InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: 4,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius: BorderRadius.circular(100)),
                                            ),
                                          ),
                                        ),
                                        VerticalSpacing(20),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(100),
                                                  child: Image.asset(
                                                    Assets.imagesRiderImage,
                                                    height: 70,
                                                    width: 70,
                                                  ),
                                                ),
                                                Text(
                                                  "Alan Sanusi",
                                                  style: TextStyling.h4
                                                      .copyWith(color: AppColors.white),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                          Assets.imagesLocationWhite,
                                                          height: 20,
                                                          width: 20,
                                                        ),
                                                        HorizontalSpacing(5),
                                                        Text(
                                                          "34 Km",
                                                          style: TextStyling.h4.copyWith(
                                                              color: AppColors.white),
                                                        )
                                                      ],
                                                    ),
                                                    HorizontalSpacing(20),
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
                                                          style: TextStyling.h4.copyWith(
                                                              color: AppColors.white),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                VerticalSpacing(34),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                              ],
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Image.asset(Assets.imagesCallVectorRider,height: 33,width: 33,),
                                            Image.asset(Assets.imagesMsgVector,height: 33,width: 33,),
                                            SmallButton(title: "Arrived pickup location", onTap: (){
                                              model.isRiderArrivedForPickUp = false;
                                              model.isRiderStartTrip = true;
                                              model.notifyListeners();
                                            }, isPrimary: false),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                      : (model.isRiderStartTrip)
                                                ? AnimatedContainer(
                                              padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                                              duration: Duration(seconds: 1),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Positioned(
                                                    left: context.screenSize().width / 2 - 15,
                                                    right: context.screenSize().width / 2 - 15,
                                                    top: 20,
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Container(
                                                        height: 4,
                                                        width: 30,
                                                        decoration: BoxDecoration(
                                                            color: AppColors.white,
                                                            borderRadius: BorderRadius.circular(100)),
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalSpacing(20),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius: BorderRadius.circular(100),
                                                            child: Image.asset(
                                                              Assets.imagesRiderImage,
                                                              height: 70,
                                                              width: 70,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Alan Sanusi",
                                                            style: TextStyling.h4
                                                                .copyWith(color: AppColors.white),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Image.asset(
                                                                    Assets.imagesLocationWhite,
                                                                    height: 20,
                                                                    width: 20,
                                                                  ),
                                                                  HorizontalSpacing(5),
                                                                  Text(
                                                                    "34 Km",
                                                                    style: TextStyling.h4.copyWith(
                                                                        color: AppColors.white),
                                                                  )
                                                                ],
                                                              ),
                                                              HorizontalSpacing(20),
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
                                                                    style: TextStyling.h4.copyWith(
                                                                        color: AppColors.white),
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          VerticalSpacing(34),
                                                          Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment.center,
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
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  MainButton(title: "Start trip", isPrimary: false, onTap: (){
                                                    model.isRiderStartTrip = false;
                                                    model.isRiderRiding = true;
                                                    model.notifyListeners();
                                                    model.onRideDone();
                                                  }),
                                                ],
                                              ),
                                            )
                                                : (model.isRiderArrivedToDestination)
                                                      ? AnimatedContainer(
                                                    padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                                                    duration: Duration(seconds: 1),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Positioned(
                                                          left: context.screenSize().width / 2 - 15,
                                                          right: context.screenSize().width / 2 - 15,
                                                          top: 20,
                                                          child: InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height: 4,
                                                              width: 30,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors.white,
                                                                  borderRadius: BorderRadius.circular(100)),
                                                            ),
                                                          ),
                                                        ),
                                                        VerticalSpacing(20),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          children: [
                                                            Column(
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius: BorderRadius.circular(100),
                                                                  child: Image.asset(
                                                                    Assets.imagesRiderImage,
                                                                    height: 70,
                                                                    width: 70,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "Alan Sanusi",
                                                                  style: TextStyling.h4
                                                                      .copyWith(color: AppColors.white),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment.spaceEvenly,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Image.asset(
                                                                          Assets.imagesLocationWhite,
                                                                          height: 20,
                                                                          width: 20,
                                                                        ),
                                                                        HorizontalSpacing(5),
                                                                        Text(
                                                                          "34 Km",
                                                                          style: TextStyling.h4.copyWith(
                                                                              color: AppColors.white),
                                                                        )
                                                                      ],
                                                                    ),
                                                                    HorizontalSpacing(20),
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
                                                                          style: TextStyling.h4.copyWith(
                                                                              color: AppColors.white),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                VerticalSpacing(34),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment.center,
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
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        Spacer(),
                                                        MainButton(title: "End trip", isPrimary: false, onTap: (){
                                                          model.isRideAccepted = false;
                                                          model.isRiderArrivedForPickUp = false;
                                                          model.isRiderStartTrip = false;
                                                          model.isRiderRiding = false;
                                                          model.isRiderArrivedToDestination = false;
                                                          model.isRideOnRequest = false;
                                                          NavService.doneCarRide();
                                                          model.notifyListeners();
                                                        }),
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
                                                          left: context.screenSize().width / 2 - 15,
                                                          right: context.screenSize().width / 2 - 15,
                                                          top: 20,
                                                          child: InkWell(
                                                            onTap: () {},
                                                            child: Container(
                                                              height: 4,
                                                              width: 30,
                                                              decoration: BoxDecoration(
                                                                  color: AppColors.white,
                                                                  borderRadius:
                                                                  BorderRadius.circular(100)),
                                                            ),
                                                          ),
                                                        ),
                                                        VerticalSpacing(20),
                                                        Text(
                                                          "Dont Use Cell Phone You Are On Ride",
                                                          style: TextStyling.h4
                                                              .copyWith(color: AppColors.white),
                                                        ),
                                                      ],
                                                    ),
                                                  );
              },
              body: Stack(
                children: [
                  GoogleMap(
                    myLocationButtonEnabled: true,
                    zoomControlsEnabled: true,
                    initialCameraPosition: model.initialCameraPosition,
                    onMapCreated: (controller) =>
                        model.mapController = controller,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 67, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            Assets.imagesRiderUserAvatar,
                            height: 38,
                            width: 38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => StartCarRideViewModel(),
    );
  }
}

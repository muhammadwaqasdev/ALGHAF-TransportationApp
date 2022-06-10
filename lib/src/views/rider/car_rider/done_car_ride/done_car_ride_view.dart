import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/shared/textfield.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/car_rider/done_car_ride/done_car_ride_view_model.dart';
import 'package:AlGhaf/src/views/rider/car_rider/start_car_ride/start_car_ride_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class DoneCarRideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<DoneCarRideViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
          body: AnimatedContainer(
            color: AppColors.grey,
            duration: Duration(seconds: 1),
            child: Stack(
              children: [
                Stack(
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
                (model.isShowSlip == true) ? Container(
                  color: AppColors.black.withOpacity(0.5),
                  height: context.screenSize().height,
                  width: context.screenSize().width,
                  child: Center(
                    child: Container(
                      width: context.screenSize().width - 50,
                      height: context.screenSize().width - 100,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [AppColors.boxShadow]
                      ),
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
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
                                  VerticalSpacing(20),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Assets.imagesLocationVectorYellow,
                                        height: 20,
                                        width: 20,
                                      ),
                                      HorizontalSpacing(5),
                                      Text(
                                        "20 Kado street, Ikeja Lagos",
                                        style: TextStyling.paragraph
                                            .copyWith(color: AppColors.white),
                                      ),
                                    ],
                                  ),

                                  VerticalSpacing(5),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Assets.imagesLocationVectorYellow,
                                        height: 20,
                                        width: 20,
                                      ),
                                      HorizontalSpacing(5),
                                      FittedBox(
                                        child: Text(
                                          "20 Kado street, Ikeja Lagos",
                                          style: TextStyling.paragraph
                                              .copyWith(color: AppColors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total Rent",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.white),
                              ),
                              HorizontalSpacing(5),
                              Text(
                                "AED 30",
                                style: TextStyling.text
                                    .copyWith(color: AppColors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Text(
                                "Paid by Card",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.white),
                              ),
                              HorizontalSpacing(5),
                              Text(
                                "AED 20",
                                style: TextStyling.text
                                    .copyWith(color: AppColors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                              Text(
                                "Remain",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.white),
                              ),
                              HorizontalSpacing(5),
                              Text(
                                "AED 10",
                                style: TextStyling.text
                                    .copyWith(color: AppColors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.end,
                            children: [
                              SmallButton(title: "Collect", onTap: (){
                                model.isShowSlip = false;
                                model.isRemainPayment = true;
                                model.notifyListeners();
                              }, isPrimary: false)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ) : (model.isRemainPayment == true) ? Container(
                  color: AppColors.black.withOpacity(0.5),
                  height: context.screenSize().height,
                  width: context.screenSize().width,
                  child: Center(
                    child: Container(
                      width: context.screenSize().width - 50,
                      height: context.screenSize().width - 100,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [AppColors.boxShadow]
                      ),
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
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
                                  VerticalSpacing(20),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Assets.imagesLocationVectorYellow,
                                        height: 20,
                                        width: 20,
                                      ),
                                      HorizontalSpacing(5),
                                      Text(
                                        "20 Kado street, Ikeja Lagos",
                                        style: TextStyling.paragraph
                                            .copyWith(color: AppColors.white),
                                      ),
                                    ],
                                  ),

                                  VerticalSpacing(5),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        Assets.imagesLocationVectorYellow,
                                        height: 20,
                                        width: 20,
                                      ),
                                      HorizontalSpacing(5),
                                      FittedBox(
                                        child: Text(
                                          "20 Kado street, Ikeja Lagos",
                                          style: TextStyling.paragraph
                                              .copyWith(color: AppColors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Alan Sanusi",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.white),
                              ),
                              CustomInput(controller: TextEditingController(), onTap: (){}, hint: "Enter Amount"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.end,
                            children: [
                              MainButton(title: "Received", isPrimary: false, onTap: (){
                                model.isRemainPayment = false;
                                model.isFinished = true;
                                model.notifyListeners();
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ) : Container(
                  color: AppColors.black.withOpacity(0.5),
                  height: context.screenSize().height,
                  width: context.screenSize().width,
                  child: Center(
                    child: Column(

                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => DoneCarRideViewModel(),
    );
  }
}

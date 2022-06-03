import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/carSelectionWidget.dart';
import 'package:AlGhaf/src/shared/location_input_field.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/payment_method_card.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/car_ride/request_texi/request_texi_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class RequestTexiView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestTexiViewModel>.reactive(
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
              maxHeight: (model.isInitStage) ? 325 : 430,
              backdropEnabled: false,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: AppColors.primary,
              panelBuilder: (controller) => (model.isInitStage) ? AnimatedContainer(
                padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                duration: Duration(seconds: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CarSelecting(
                                  title: "Standard",
                                  selectedIcon: Assets.imagesExclusiveSelected,
                                  unSelectedIcon: Assets.imagesStanderdUnSelected,
                                  isSelected: (model.carSelectedExclusive == false)
                                      ? true
                                      : false,
                                  onTap: () {
                                    model.carSelectedExclusive = !model.carSelectedExclusive;
                                    model.notifyListeners();
                                  }),
                              HorizontalSpacing(40),
                              CarSelecting(
                                  title: "Exclusive",
                                  selectedIcon: Assets.imagesExclusiveSelected,
                                  unSelectedIcon: Assets.imagesStanderdUnSelected,
                                  isSelected: (model.carSelectedExclusive == true)
                                      ? true
                                      : false,
                                  onTap: () {
                                    model.carSelectedExclusive = !model.carSelectedExclusive;
                                    model.notifyListeners();
                                  }),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("34 Km",style: TextStyling.h4.copyWith(color: AppColors.white),),
                              Row(
                                children: [
                                  Image.asset(Assets.imagesClockVectorWhite,height: 20,width: 20,),
                                  HorizontalSpacing(5),
                                  Text("1h30m",style: TextStyling.h4.copyWith(color: AppColors.white),)
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(Assets.imagesMoneyVectorWhite,height: 20,width: 20,),
                                  HorizontalSpacing(5),
                                  Text("\$45.20",style: TextStyling.h4.copyWith(color: AppColors.white),)
                                ],
                              ),
                            ],
                          ),
                          MainButton(title: "Request for texi", isPrimary: false, onTap: (){
                            model.isInitStage = false;
                            model.notifyListeners();
                          },borderRadius: 12,),
                        ],
                      ),
                    )
                  ],
                ),
              ) : AnimatedContainer(
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
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(Assets.imagesMoneyVectorWhite,height: 20,width: 20,),
                              HorizontalSpacing(5),
                              Text("\$45.20",style: TextStyling.h4.copyWith(color: AppColors.white),)
                            ],
                          ),
                          Row(
                            children: [
                              Text("Select Payment",style: TextStyling.h4,),
                            ],
                          ),
                          PaymentMethodCardTile(title: "Cash Payment", cardNumber: "Defult method", icon: Assets.imagesMoneyVectorBlue, isSelected: false, onTap: (){}),
                          PaymentMethodCardTile(title: "Master Card", cardNumber: "****    ****    ****   4584", icon: Assets.imagesMasterCardLogo, isSelected: true, onTap: (){}),
                          MainButton(title: "Done", isPrimary: false, onTap: (){},borderRadius: 12,),
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
                    markers: {
                      if (model.originLocation != null) model.origin,
                      if (model.destinationLocation != null) model.destination
                    },
                    polylines: {model.directionPolyline},
                    onLongPress: (val) {
                      print(val);
                    },
                  ),
                  Container(
                    height: 240,
                    padding: EdgeInsets.fromLTRB(20, 67, 20, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              Assets.imagesBackArrowBig,
                              height: 18,
                              width: 28,
                            ),
                          ],
                        ),
                        VerticalSpacing(30),
                        LocationInputField(
                          hint: "where from to go?",
                          controller: model.originLocation,
                          onTap: () {},
                          icon: Assets.imagesStartlocation,
                        ),
                        VerticalSpacing(10),
                        LocationInputField(
                          hint: "where to go?",
                          controller: model.destinationLocation,
                          onTap: () {},
                          icon: Assets.imagesEndLocation,
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
      viewModelBuilder: () => RequestTexiViewModel(),
      onModelReady: (model) => model.init(),
    );
  }
}

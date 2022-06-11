import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/rider/mini_toggle_btn.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/car_rider/searching_ride/searching_ride_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class SearchingRideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchingRideViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
          body: AnimatedContainer(
            color: AppColors.grey,
            duration: Duration(seconds: 1),
            child: SlidingUpPanel(
              boxShadow: [
                BoxShadow(color: AppColors.primary),
              ],
              isDraggable: (model.isInitStage) ? false : (model.startSearch) ? false : true,
              minHeight: (model.isInitStage) ? 210 : (model.startSearch) ? 60 : 40,
              maxHeight: (model.isInitStage) ? 210 : (model.startSearch) ? 60 : 220,
              backdropEnabled: false,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              color: AppColors.primary,
              panelBuilder: (controller) => (model.isInitStage)
                  ? AnimatedContainer(
                      padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                      duration: Duration(seconds: 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("You are  currently offline",style: TextStyling.h4.copyWith(color: AppColors.white),),
                          VerticalSpacing(22),
                          SizedBox(
                            height: 115,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(Assets.imagesAcceptanceVector,height: 20,width: 20,),
                                    VerticalSpacing(),
                                    Text("95.0%",style: TextStyling.text.copyWith(color: AppColors.white),),
                                    VerticalSpacing(),
                                    Text("Acceptance",style: TextStyling.h4.copyWith(color: AppColors.white),),
                                  ],
                                ),
                                Container(
                                  height: 114,
                                  width: 1,
                                  decoration: BoxDecoration(
                                    color: AppColors.grey
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(Assets.imagesRatingVector,height: 20,width: 20,),
                                    VerticalSpacing(),
                                    Text("95.0%",style: TextStyling.text.copyWith(color: AppColors.white),),
                                    VerticalSpacing(),
                                    Text("Rating",style: TextStyling.h4.copyWith(color: AppColors.white),),
                                  ],
                                ),
                                Container(
                                  height: 114,
                                  width: 1,
                                  decoration: BoxDecoration(
                                      color: AppColors.grey
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(Assets.imagesCancelationVector,height: 20,width: 20,),
                                    VerticalSpacing(),
                                    Text("95.0%",style: TextStyling.text.copyWith(color: AppColors.white),),
                                    VerticalSpacing(),
                                    Text("Cancelleation",style: TextStyling.h4.copyWith(color: AppColors.white),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : (model.startSearch) ? AnimatedContainer(
                padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                duration: Duration(seconds: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Scanning...",style: TextStyling.h4.copyWith(color: AppColors.white),),
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
                          Text("You are back online",style: TextStyling.h4.copyWith(color: AppColors.white),),
                          VerticalSpacing(22),
                          SizedBox(
                            height: 115,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(Assets.imagesAcceptanceVector,height: 20,width: 20,),
                                    VerticalSpacing(),
                                    Text("95.0%",style: TextStyling.text.copyWith(color: AppColors.white),),
                                    VerticalSpacing(),
                                    Text("Acceptance",style: TextStyling.h4.copyWith(color: AppColors.white),),
                                  ],
                                ),
                                Container(
                                  height: 114,
                                  width: 1,
                                  decoration: BoxDecoration(
                                      color: AppColors.grey
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(Assets.imagesRatingVector,height: 20,width: 20,),
                                    VerticalSpacing(),
                                    Text("95.0%",style: TextStyling.text.copyWith(color: AppColors.white),),
                                    VerticalSpacing(),
                                    Text("Rating",style: TextStyling.h4.copyWith(color: AppColors.white),),
                                  ],
                                ),
                                Container(
                                  height: 114,
                                  width: 1,
                                  decoration: BoxDecoration(
                                      color: AppColors.grey
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(Assets.imagesCancelationVector,height: 20,width: 20,),
                                    VerticalSpacing(),
                                    Text("95.0%",style: TextStyling.text.copyWith(color: AppColors.white),),
                                    VerticalSpacing(),
                                    Text("Cancelleation",style: TextStyling.h4.copyWith(color: AppColors.white),),
                                  ],
                                ),
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
                    padding: EdgeInsets.fromLTRB(20, 67, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 38,
                          width: 38,
                        ),
                        MiniToggleBtn(onTap: (){
                          model.isToggled = !model.isToggled;
                          model.isInitStage = !model.isInitStage;
                          model.notifyListeners();
                          (model.isToggled == true) ? model.StartSearching() : null;
                        }, isToggled: model.isToggled),
                        InkWell(
                          onTap: () {
                          },
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
      viewModelBuilder: () => SearchingRideViewModel(),
      onModelReady: (model) => model.init(),
    );
  }
}

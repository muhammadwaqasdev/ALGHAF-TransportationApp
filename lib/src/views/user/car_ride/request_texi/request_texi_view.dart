import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/location_input_field.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/views/user/car_ride/request_texi/request_texi_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class RequestTexiView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RequestTexiViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
          body: Stack(
            children: [
              GoogleMap(
                initialCameraPosition: model.initialCameraPosition,
                zoomControlsEnabled: true,
                mapType: MapType.normal,
                onMapCreated: (GoogleMapController controller) {
                  model.mapController.complete(controller);
                },
                markers: {
                  model.origin,
                  model.destination,
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
              Positioned(
                left: 0,
                right: 0,
                bottom: 1,
                child: Stack(
                  children: [
                    Container(
                      height: 40,
                      width: context.screenSize().width,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                      ),
                      child: SizedBox.shrink(),
                    ),
                    Positioned(
                      left: context.screenSize().width / 2  - 50,
                      right:context.screenSize().width / 2 - 50 ,
                      top: 20,
                      child: InkWell(
                        onTap: (){
                          print("object");
                        },
                        child: Container(
                          height: 6,
                          width: 100,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => RequestTexiViewModel(),
    );
  }
}

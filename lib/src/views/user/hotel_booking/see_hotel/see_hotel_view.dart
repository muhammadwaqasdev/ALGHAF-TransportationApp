import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/room_card_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/hotel_booking/see_hotel/see_hotel_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class SeeHotelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SeeHotelViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: Image.asset(
                      Assets.imagesHotelPicture,
                      height: 355,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            Assets.imagesBackArrowBigWhite,
                            height: 18,
                            width: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DUBAI Hotal",
                                  style: TextStyling.h4,
                                ),
                                VerticalSpacing(5),
                                Text(
                                  "Dubai Marina, Dubai, UAE",
                                  style: TextStyling.paragraph
                                      .copyWith(color: AppColors.grey),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      Assets.imagesStarVector,
                                      height: 16,
                                      width: 16,
                                    ),
                                    HorizontalSpacing(),
                                    Image.asset(
                                      Assets.imagesStarVector,
                                      height: 16,
                                      width: 16,
                                    ),
                                    HorizontalSpacing(),
                                    Image.asset(
                                      Assets.imagesStarVector,
                                      height: 16,
                                      width: 16,
                                    ),
                                    HorizontalSpacing(),
                                    Image.asset(
                                      Assets.imagesStarVector,
                                      height: 16,
                                      width: 16,
                                    ),
                                    HorizontalSpacing(),
                                    Image.asset(
                                      Assets.imagesStarVector,
                                      height: 16,
                                      width: 16,
                                    ),
                                  ],
                                ),
                                VerticalSpacing(5),
                                Text(
                                  "AED800/Night",
                                  style: TextStyling.text,
                                ),
                              ],
                            ),
                          ],
                        ),
                        VerticalSpacing(20),
                        Text(
                          "1 Night, 1 Adult",
                          style: TextStyling.paragraph
                              .copyWith(color: AppColors.grey),
                        ),
                        VerticalSpacing(10),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                            "Free cancellation",
                            style: TextStyling.paragraph
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        VerticalSpacing(5),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                            "Breakfast Included",
                            style: TextStyling.paragraph
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        VerticalSpacing(5),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                            "Breakfast Included",
                            style: TextStyling.paragraph
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        VerticalSpacing(20),
                        Text(
                          "Property amenities",
                          style: TextStyling.h3,
                        ),
                        VerticalSpacing(5),
                        SizedBox(
                          width: context.screenSize().width,
                          height: 90,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesBeachVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "beach",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesWiFiVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "Wifi",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesRestaurantVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "Resturent",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesTvVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "TV",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesBeachVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "beach",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesWiFiVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "Wifi",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesRestaurantVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "Resturent",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesTvVector,
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(
                                      "TV",
                                      style: TextStyling.text,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        VerticalSpacing(20),
                        Text(
                          "Location",
                          style: TextStyling.h3,
                        ),
                        VerticalSpacing(5),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: context.screenSize().width,
                    child: GoogleMap(
                      myLocationButtonEnabled: true,
                      zoomControlsEnabled: true,
                      initialCameraPosition: model.initialCameraPosition,
                      onMapCreated: (controller) =>
                          model.mapController = controller,
                      markers: {
                        model.origin,
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Assets.imagesLocationVector,
                              height: 24,
                              width: 24,
                            ),
                            Expanded(
                              child: Text(
                                "204, Sohrab Katrak Road، Regal Chowk, Artillery Maidan, Karachi, Karachi City, Sindh 75600",
                                maxLines: 3,
                                style: TextStyling.paragraph,
                              ),
                            )
                          ],
                        ),
                        VerticalSpacing(20),
                        Text(
                          "Select a room",
                          style: TextStyling.h3,
                        ),
                        VerticalSpacing(5),
                        RoomCardTile(),
                        RoomCardTile(),
                        RoomCardTile(),
                        RoomCardTile(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
      },
      viewModelBuilder: () => SeeHotelViewModel(),
    );
  }
}

import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/hotel_card_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/hotel_booking/searched_hotel/searched_hotel_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SearchedHotelView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchedHotelViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                      VerticalSpacing(50),
                      Text(
                        "DUBAI, UAE",
                        style: TextStyling.extraBold
                            .copyWith(color: AppColors.white),
                      ),
                      VerticalSpacing(50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Adult 1",
                            style:
                                TextStyling.h4.copyWith(color: AppColors.white),
                          ),
                          Text(
                            "1 Room",
                            style:
                                TextStyling.h4.copyWith(color: AppColors.white),
                          ),
                          Text(
                            "Aug 14 - Aug 19",
                            style:
                                TextStyling.h4.copyWith(color: AppColors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              VerticalSpacing(15),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "122 Results",
                      style: TextStyling.h2,
                    ),
                    Image.asset(
                      Assets.imagesPermeterVector,
                      height: 24,
                      width: 24,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            NavService.seeHotel();
                          },
                          child: HotelCardTile(isOpen: false));
                    }),
              )
            ],
          ),
        ));
      },
      viewModelBuilder: () => SearchedHotelViewModel(),
    );
  }
}

import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/hotel_card_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/shared/text_field_for_booking_search.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/hotel_booking/hotel_searching/hotel_searching_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HotelSearchingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HotelSearchingViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 560,
                child: Stack(
                  children: [
                    Container(
                      height: 385,
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
                              "Book Your Hotel",
                              style: TextStyling.h1
                                  .copyWith(color: AppColors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 30,
                      child: Container(
                        height: 318,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [AppColors.boxShadow],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextFieldForBooking(
                                  hint: "Select City",
                                  controller: TextEditingController(),
                                  onTap: () {},
                                  title: "Going To",
                                  width: context.screenSize().width - 100,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextFieldForBooking(
                                  hint: "Select Date",
                                  controller: TextEditingController(),
                                  onTap: () {},
                                  title: "Check In",
                                ),
                                TextFieldForBooking(
                                  hint: "Select Date",
                                  controller: TextEditingController(),
                                  onTap: () {},
                                  title: "Check Out",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextFieldForBooking(
                                  hint: "Select Guests",
                                  controller: TextEditingController(),
                                  onTap: () {},
                                  title: "Guests",
                                ),
                                TextFieldForBooking(
                                  hint: "Select Room",
                                  controller: TextEditingController(),
                                  onTap: () {},
                                  title: "Rooms",
                                ),
                              ],
                            ),
                            VerticalSpacing()
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: InkWell(
                        onTap: () {
                          NavService.searchedHotel();
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: AppColors.secondary,
                              shape: BoxShape.circle),
                          child: Center(
                              child: Image.asset(
                            Assets.imagesSearchVector,
                            height: 30,
                            width: 30,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              VerticalSpacing(15),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Suggestions",
                      style: TextStyling.h2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 20),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            NavService.seeHotel();
                          },
                          child: HotelCardTile(
                            isOpen: true,
                          ));
                    }),
              )
            ],
          ),
        ));
      },
      viewModelBuilder: () => HotelSearchingViewModel(),
    );
  }
}

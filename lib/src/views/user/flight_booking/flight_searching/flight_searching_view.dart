import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/flight_type_selection.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/shared/text_field_for_booking_search.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/flight_booking/flight_searching/flight_searching_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FlightSearchingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FlightSearchingViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 630,
                    child: Stack(
                      children: [
                        Container(
                          height: 455,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(Assets.imagesBackArrowBigWhite,height: 18,width: 28,),
                                  ],
                                ),
                                VerticalSpacing(50),
                                Text("Book Your Flight",style: TextStyling.h1.copyWith(color: AppColors.white),),
                                VerticalSpacing(50),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    FlightTypeSelection(title: "One Way", onTap: (){
                                      model.isOneWaySelected = true;
                                      model.notifyListeners();
                                    }, isSelected: (model.isOneWaySelected == true) ? true : false),
                                    FlightTypeSelection(title: "Round Trip", onTap: (){
                                      model.isOneWaySelected = false;
                                      model.notifyListeners();
                                    }, isSelected: (model.isOneWaySelected == false) ? true : false),
                                  ],
                                )
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
                              boxShadow: [
                                AppColors.boxShadow
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextFieldForBooking(hint: "Select City", controller: TextEditingController(), onTap: (){}, title: "From",),
                                    TextFieldForBooking(hint: "Select City", controller: TextEditingController(), onTap: (){}, title: "To",),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextFieldForBooking(hint: "Select Date", controller: TextEditingController(), onTap: (){}, title: "Date",),
                                    TextFieldForBooking(hint: "Select Date", controller: TextEditingController(), onTap: (){}, title: "Return",),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextFieldForBooking(hint: "Select Persons", controller: TextEditingController(), onTap: (){}, title: "Passenger",),
                                    TextFieldForBooking(hint: "Select Class", controller: TextEditingController(), onTap: (){}, title: "Class",),
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
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: AppColors.secondary,
                                shape: BoxShape.circle
                            ),
                            child: Center(child: Image.asset(Assets.imagesSearchVector,height: 30,width: 30,)),
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
                        Text("Suggestions", style: TextStyling.h2,),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        AppColors.boxShadow
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Karachi",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("KHI",style: TextStyling.h2,),
                            ],
                          ),
                          Image.asset(Assets.imagesBothSideArrowGrey,height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dubai",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("DBX",style: TextStyling.h2,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        AppColors.boxShadow
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Karachi",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("KHI",style: TextStyling.h2,),
                            ],
                          ),
                          Image.asset(Assets.imagesBothSideArrowGrey,height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dubai",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("DBX",style: TextStyling.h2,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        AppColors.boxShadow
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Karachi",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("KHI",style: TextStyling.h2,),
                            ],
                          ),
                          Image.asset(Assets.imagesBothSideArrowGrey,height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dubai",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("DBX",style: TextStyling.h2,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        AppColors.boxShadow
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Karachi",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("KHI",style: TextStyling.h2,),
                            ],
                          ),
                          Image.asset(Assets.imagesBothSideArrowGrey,height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dubai",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("DBX",style: TextStyling.h2,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        AppColors.boxShadow
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Karachi",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("KHI",style: TextStyling.h2,),
                            ],
                          ),
                          Image.asset(Assets.imagesBothSideArrowGrey,height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dubai",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("DBX",style: TextStyling.h2,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        AppColors.boxShadow
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(bottom: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Karachi",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("KHI",style: TextStyling.h2,),
                            ],
                          ),
                          Image.asset(Assets.imagesBothSideArrowGrey,height: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dubai",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                              Text("DBX",style: TextStyling.h2,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        );
      },
      viewModelBuilder: () => FlightSearchingViewModel(),
    );
  }
}

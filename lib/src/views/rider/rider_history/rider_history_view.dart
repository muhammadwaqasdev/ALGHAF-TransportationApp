import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/rider/rider_ride_tile.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/rider_history/rider_history_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RiderHistoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RiderHistoryViewModel>.reactive(
        builder: (context, model, child) {
          return AppScreen(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: [
                  VerticalSpacing(66),
                  Row(
                    children: [
                      Image.asset(Assets.imagesLeftArrowBlack,height: 24,width: 24,),
                      Text("History",style: TextStyling.h4,)
                    ],
                  ),
                  VerticalSpacing(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(title: "Today", onTap: (){}, isSelected: true),
                      CustomButton(title: "Week", onTap: (){}, isSelected: false),
                      CustomButton(title: "Month", onTap: (){}, isSelected: false),
                      CustomButton(title: "All", onTap: (){}, isSelected: false),
                    ],
                  ),
                  ListView.builder(
                      padding: EdgeInsets.only(top: 20),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return RiderRideTile();
                      })
                ],),
              ));
        },
        viewModelBuilder: () => RiderHistoryViewModel(),
        onModelReady: (model) => model.init());
  }
}

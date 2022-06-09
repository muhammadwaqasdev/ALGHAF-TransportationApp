import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class RiderRideTile extends StatelessWidget {
  const RiderRideTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("7:15\nAM",textAlign: TextAlign.center,style: TextStyling.h4,),
              HorizontalSpacing(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("A Location - B Location",textAlign: TextAlign.center,style: TextStyling.h4,),
                  Row(
                    children: [
                      Image.asset(Assets.imagesStarVector,height: 10,width: 10,),
                      HorizontalSpacing(5),
                      Image.asset(Assets.imagesStarVector,height: 10,width: 10,),
                      HorizontalSpacing(5),
                      Image.asset(Assets.imagesStarVector,height: 10,width: 10,),
                      HorizontalSpacing(5),
                      Image.asset(Assets.imagesStarVector,height: 10,width: 10,),
                      HorizontalSpacing(5),
                      Image.asset(Assets.imagesStarVector,height: 10,width: 10,),
                    ],
                  )
                ],
              )
            ],
          ),
          Text("AED 35\nCash",textAlign: TextAlign.end,style: TextStyling.text,),
        ],
      ),
    );
  }
}

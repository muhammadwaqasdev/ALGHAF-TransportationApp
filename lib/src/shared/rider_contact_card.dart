import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class RiderContactCard extends StatelessWidget {
  const RiderContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(15),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                    Assets.imagesRiderImage,
                    height: 60,
                    width: 60,
                  ),),
                  HorizontalSpacing(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cihan soysakal",style: TextStyling.h4.copyWith(color: AppColors.primary),),
                      VerticalSpacing(),
                      Row(
                        children: [
                          Image.asset(Assets.imagesStarVector,height: 17,width: 17,),
                          Text("4.4",style: TextStyling.h4.copyWith(color: AppColors.primary),),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(Assets.imagesThumsupVector,height: 17,width: 17,),
                      Text("15",style: TextStyling.h4.copyWith(color: AppColors.primary),),
                    ],
                  ),
                  HorizontalSpacing(15),
                  Row(
                    children: [
                      Image.asset(Assets.imagesCommentVector,height: 17,width: 17,),
                      Text("4",style: TextStyling.h4.copyWith(color: AppColors.primary),),
                    ],
                  ),
                ],
              )
            ],
          ),
          Positioned(
            bottom: 0,
              right: 0,
              child: SmallButton(title: "Call", onTap: (){}, isPrimary: false)),
        ],
      ),
    );
  }
}

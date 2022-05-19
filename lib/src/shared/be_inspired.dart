import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class BeInspired extends StatelessWidget {
  const BeInspired({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
        color: AppColors.white,
      ),
      padding: EdgeInsets.fromLTRB(26, 17, 17, 17),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondary
                ),
                child: Center(child: Image.asset(Assets.imagesGlobe,height: 30,width: 30,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Need Help Where To Go?",style: TextStyling.h4.copyWith(color: AppColors.grey),),
                    VerticalSpacing(10),
                    Text("Find Great Destination",style: TextStyling.text,),
                  ],
                ),
              )
            ],
          ),
          Image.asset(Assets.imagesRightArrowBlack,height: 18,width: 20,),
        ],
      ),
    );
  }
}

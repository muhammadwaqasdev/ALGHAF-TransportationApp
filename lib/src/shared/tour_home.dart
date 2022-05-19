import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class TourHome extends StatelessWidget {
  const TourHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            blurRadius: 4,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(Assets.imagesDubaiImage,height: 118,fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Dubai",
                  style: TextStyling.h4,
                ),
                RichText(
                  text: TextSpan(
                    text: "\$ ",
                    style: TextStyling.paragraph,
                    children: [
                      TextSpan(
                        text: '150',
                        style: TextStyling.paragraph.copyWith(color: AppColors.primary),
                      ),
                      TextSpan(
                        text: '/',
                        style: TextStyling.paragraph,
                      ),
                      TextSpan(
                        text: 'Person',
                        style: TextStyling.paragraph.copyWith(color: AppColors.secondary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

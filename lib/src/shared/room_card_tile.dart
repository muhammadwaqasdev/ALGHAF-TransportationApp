import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class RoomCardTile extends StatelessWidget {
  const RoomCardTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        boxShadow: [AppColors.boxShadow],
      ),
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              Assets.imagesHotelPicture,
              height: 124,
              width: context.screenSize().width,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 95,
                  width: context.screenSize().width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DUBAI Hotal",
                            style: TextStyling.h4,
                          ),
                          VerticalSpacing(),
                          Text(
                            "1 Master Bed with breakfast Extra Mattress 2000+tax",
                            style: TextStyling.paragraph,
                            maxLines: 3,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: FittedBox(
                                child: Text(
                              "Free cancellation",
                              style: TextStyling.paragraph
                                  .copyWith(color: AppColors.white),
                            )),
                          ),
                          HorizontalSpacing(),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: FittedBox(
                                child: Text(
                              "Breakfast Included",
                              style: TextStyling.paragraph
                                  .copyWith(color: AppColors.white),
                            )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "AED800/Night",
                        style: TextStyling.text,
                      ),
                      VerticalSpacing(),
                      Text(
                        "1 Night, 1 Adult",
                        style: TextStyling.paragraph
                            .copyWith(color: AppColors.grey),
                      ),
                      Spacer(),
                      SmallButton(
                          title: "Reserve", onTap: () {}, isPrimary: true)
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

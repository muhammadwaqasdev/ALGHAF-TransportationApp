import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:flutter/material.dart';

class HotelCardTile extends StatefulWidget {
  bool isOpen;

  HotelCardTile({Key? key, required this.isOpen}) : super(key: key);

  @override
  State<HotelCardTile> createState() => _HotelCardTileState();
}

class _HotelCardTileState extends State<HotelCardTile> {
  @override
  Widget build(BuildContext context) {
    bool _isOpen = widget.isOpen;
    return _isOpen
        ? AnimatedContainer(
            height: 265,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
              boxShadow: [AppColors.boxShadow],
            ),
            margin: EdgeInsets.only(bottom: 15),
            duration: Duration(milliseconds: 500),
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
                                Text(
                                  "Dubai Marina, Dubai, UAE",
                                  style: TextStyling.paragraph
                                      .copyWith(color: AppColors.grey),
                                ),
                              ],
                            ),
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
                            Text(
                              "1 Night, 1 Adult",
                              style: TextStyling.paragraph
                                  .copyWith(color: AppColors.grey),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 95,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "AED800/Night",
                              style: TextStyling.text,
                            ),
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
                            InkWell(
                                onTap: () {
                                  this.setState(() {
                                    widget.isOpen = false;
                                  });
                                },
                                child: Image.asset(
                                  Assets.imagesDownArrowBlack,
                                  height: 24,
                                  width: 24,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : AnimatedContainer(
            height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
              boxShadow: [AppColors.boxShadow],
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: EdgeInsets.only(bottom: 15),
            duration: Duration(milliseconds: 500),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(Assets.imagesHotelPicture))),
                ),
                HorizontalSpacing(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "DUBAI Hotal",
                      style: TextStyling.h4,
                    ),
                    Text(
                      "Dubai Marina, Dubai, UAE",
                      style:
                          TextStyling.paragraph.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "AED800/Night",
                      style: TextStyling.h4,
                    ),
                    InkWell(
                        onTap: () {
                          this.setState(() {
                            widget.isOpen = true;
                          });
                        },
                        child: Image.asset(
                          Assets.imagesDownArrowBlack,
                          height: 24,
                          width: 24,
                        )),
                  ],
                ),
              ],
            ),
          );
  }
}

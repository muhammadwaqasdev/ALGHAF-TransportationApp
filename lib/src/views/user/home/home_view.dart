import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/be_inspired.dart';
import 'package:AlGhaf/src/shared/main_category.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/shared/tour_home.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/home/home_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> cat = [
      HorizontalSpacing(),
      MainCategory(logo: Assets.imagesPlaneLogo, onTap: () {}, title: "Flight"),
      MainCategory(logo: Assets.imagesHotelLogo, onTap: () {}, title: "Hotel"),
      MainCategory(
          logo: Assets.imagesCarLogo, onTap: () {}, title: "Car Hires"),
      MainCategory(
          logo: Assets.imagesParselLogo, onTap: () {}, title: "Parsel"),
      HorizontalSpacing(),
    ];
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            body: Column(
          children: [
            SizedBox(
              height: 361,
              child: Container(
                width: context.screenSize().width,
                padding: EdgeInsets.fromLTRB(0, 64, 0, 32),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            Assets.imagesMenuIcon,
                            height: 14,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(35),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "Search Your\nFlights",
                        style: TextStyling.extraBold
                            .copyWith(color: AppColors.white),
                      ),
                    ),
                    VerticalSpacing(28),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (_, index) {
                          return cat[index];
                        },
                        separatorBuilder: (_, index) {
                          return HorizontalSpacing(20);
                        },
                        itemCount: cat.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: context.screenSize().height - 361,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerticalSpacing(20),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        "Be Inspired",
                        style: TextStyling.h2,
                      ),
                    ),
                    VerticalSpacing(32),
                    BeInspired(),
                    VerticalSpacing(50),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        "Tour",
                        style: TextStyling.h2,
                      ),
                    ),
                    VerticalSpacing(32),
                    GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisSpacing: 15,crossAxisSpacing: 15,),
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(left: 20,right: 20),
                      shrinkWrap: true,
                      children: [
                        TourHome(),
                        TourHome(),
                        TourHome(),
                        TourHome(),
                        TourHome(),
                        TourHome(),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/load_image.dart';
import 'package:AlGhaf/src/shared/rider_contact_card.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/car_ride/calling_to_rider.dart/calling_to_rider_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:stacked/stacked.dart';

class CallingToRiderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CallingToRiderViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
          body: Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(Assets.imagesRiderImage,height: 93,width: 93,),
                ),

              ],
            ),
          )
        );
      },
      viewModelBuilder: () => CallingToRiderViewModel(),
    );
  }
}

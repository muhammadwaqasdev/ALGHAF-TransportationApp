import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/views/rider/rider_splash/rider_splash_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RiderSplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RiderSplashViewModel>.reactive(
        builder: (context, model, child) {
          return AppScreen(
              body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.imagesBackgroungImage),
                fit: BoxFit.cover,
              ),
            ),
            height: context.screenSize().height,
            width: context.screenSize().width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesMainLogo,
                  height: 97,
                  width: 161,
                ),
              ],
            ),
          ));
        },
        viewModelBuilder: () => RiderSplashViewModel(),
        onModelReady: (model) => model.init());
  }
}

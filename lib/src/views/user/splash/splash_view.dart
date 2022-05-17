import 'package:al_ghaf/generated/assets.asset.dart';
import 'package:al_ghaf/src/base/utils/utils.dart';
import 'package:al_ghaf/src/shared/app_screen.dart';
import 'package:al_ghaf/src/views/user/splash/splash_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
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
        viewModelBuilder: () => SplashViewModel(),
        onModelReady: (model) => model.init());
  }
}
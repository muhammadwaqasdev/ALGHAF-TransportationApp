import 'package:al_ghaf/generated/assets.asset.dart';
import 'package:al_ghaf/src/base/utils/utils.dart';
import 'package:al_ghaf/src/services/local/navigation_service.dart';
import 'package:al_ghaf/src/shared/app_screen.dart';
import 'package:al_ghaf/src/shared/numaric_pad.dart';
import 'package:al_ghaf/src/shared/phone_number_input.dart';
import 'package:al_ghaf/src/styles/app_colors.dart';
import 'package:al_ghaf/src/styles/text_theme.dart';
import 'package:al_ghaf/src/views/user/auth/number_verify/number_verify_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NumberVerifyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NumberVerifyViewModel>.reactive(
      builder: (context, model, child) => AppScreen(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(28, 71, 28, 18),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image(
                              image: AssetImage(Assets.imagesBackArrowBig),
                              height: 18,
                              width: 21,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.screenSize().height / 80,
                      ),
                      Text(
                        "Number Verification",
                        textAlign: TextAlign.center,
                        style: TextStyling.h2,
                      ),
                      SizedBox(
                        height: context.screenSize().height / 80,
                      ),
                      Image(
                        image: AssetImage(Assets.imagesPhoneIcon),
                        height: 114,
                        width: 114,
                      ),
                      SizedBox(
                        height: context.screenSize().height / 80,
                      ),
                      Text(
                        "You will receive a 4 digit code\n to verify next",
                        textAlign: TextAlign.center,
                        style: TextStyling.h4.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: AppColors.lightGrey,
                      ),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(18, 72, 18, 18),
                        child: NumericPad(
                          onNumberSelected: (int) {
                            if (model.phoneNumber.length >= 10) {
                              if (int == -1) {
                                model.numChanged(int);
                              }
                            } else {
                              model.numChanged(int);
                            }
                            model.listeners;
                          },
                          onTap: () {
                            (model.validator() == true)
                                ? NavService.codeVerify()
                                : null;
                          },
                          isValidate: model.validator(),
                        ),
                      )),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                        padding: EdgeInsets.fromLTRB(28, 0, 28, 0),
                        child:
                            PhoneNumberInput(phoneNumber: model.phoneNumber)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => NumberVerifyViewModel(),
    );
  }
}

import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/numaric_pad.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/auth/code_verify/code_verify_view_model.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';

class CodeVerifyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CodeVerifyViewModel>.reactive(
      builder: (context, model, child) => AppScreen(
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(28, 71, 28, 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          Assets.imagesBackArrowBig,
                          height: 18,
                          width: 21,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Text(
                    "Verify Code",
                    textAlign: TextAlign.center,
                    style: TextStyling.h2,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Check your sms inbox we sent \n you at +0198 367 8908",
                    textAlign: TextAlign.center,
                    style: TextStyling.text
                        .copyWith(color: AppColors.grey),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Pinput(
                    controller: model.pinputControl,
                    useNativeKeyboard: false,
                    defaultPinTheme: PinTheme(
                      width: 68,
                      height: 64,
                      textStyle: TextStyling.h2.copyWith(fontSize: 25),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: AppColors.grey, width: 1)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Don’t receive code?",
                      style: TextStyling.text.copyWith(
                        color: AppColors.grey,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "\nResend again",
                          style: TextStyling.text.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color: AppColors.lightGrey,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(18, 50, 18, 18),
                            child: NumericPad(
                              onNumberSelected: (int) {
                                if (model.pinCode.length >= 4) {
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
                                    ? NavService.home()
                                    : null;
                              },
                              isValidate: model.validator(),
                            ),
                          ),
                        ],
                      )),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 69,
                      height: 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.grey,
                          border: Border.all(
                            color: AppColors.grey,
                            width: 1,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      viewModelBuilder: () => CodeVerifyViewModel(),
    );
  }
}

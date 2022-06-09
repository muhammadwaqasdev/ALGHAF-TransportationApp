import 'package:AlGhaf/generated/assets.asset.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/textfield.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/rider_forgot_password/rider_forgot_password_view_model.dart';
import 'package:AlGhaf/src/views/user/auth/forgot_password/forgot_password_view_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

class RiderForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RiderForgotPasswordViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
            padding: EdgeInsets.fromLTRB(28, 71, 28, 48),
            body: Form(
              child: Builder(builder: (context1) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context1);
                      },
                      child: Image(
                        image: AssetImage(Assets.imagesBackArrowBig),
                        height: 18,
                        width: 21,
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      "Forgot Password",
                      style: TextStyling.h1.copyWith(color: AppColors.primary),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Please enter your email address",
                      style: TextStyling.h3.copyWith(color: AppColors.grey),
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    CustomInput(
                      controller: model.email,
                      onTap: () {},
                      hint: "Enter your Email Address",
                      errorMessage: "Please Enter Correct Email Address",
                      inputType: TextInputType.emailAddress,
                      onChanged: (val) {
                        model.listeners;
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    MainButton(
                      title: "Send",
                      isPrimary: true,
                      onTap: () {
                        (model.validator(context1) == true)
                            ? NavService.signIn()
                            : null;

                        Fluttertoast.showToast(
                            msg: "Check Your Email",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: AppColors.white,
                            textColor: AppColors.primary,
                            fontSize: 16.0);
                      },
                    ),
                  ],
                );
              }),
            ));
      },
      viewModelBuilder: () => RiderForgotPasswordViewModel(),
    );
  }
}

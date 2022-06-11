import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/shared/textfield.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/rider/rider_signin/rider_signin_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RiderSignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RiderSignInViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
          padding: EdgeInsets.fromLTRB(20, 97, 20, 20),
          body: SingleChildScrollView(
            child: Form(
              key: model.formKey,
              child: SizedBox(
                height: context.screenSize().height - 117,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Welcome back!",
                      style:
                          TextStyling.h2.copyWith(color: AppColors.primary),
                    ),
                    Text(
                      "Sign in to your account",
                      style: TextStyling.h4.copyWith(color: AppColors.grey),
                    ),
                    VerticalSpacing(50),
                    CustomInput(
                      controller: model.email,
                      onTap: () {},
                      hint: "Enter Username / Email",
                      inputType: TextInputType.text,
                      errorMessage: "Please Enter Correct Username / Email",
                      onChanged: (val) {
                        model.notifier;
                      },
                    ),
                    VerticalSpacing(32),
                    CustomInput(
                      isPassword: true,
                      controller: model.password,
                      onTap: () {},
                      hint: "Enter Password",
                      errorMessage: "Please Enter Correct Password",
                      inputType: TextInputType.visiblePassword,
                      onChanged: (val) {
                        model.notifier;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            NavService.riderForgotPassword();
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyling.text
                                .copyWith(color: AppColors.secondary),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    MainButton(
                      title: "Login",
                      isPrimary: true,
                      onTap: () {
                        (model.validator(context) == true)
                            ? model.signIn()
                            : null;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => RiderSignInViewModel(),
    );
  }
}

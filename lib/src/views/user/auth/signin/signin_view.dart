import 'package:al_ghaf/generated/assets.asset.dart';
import 'package:al_ghaf/src/base/utils/utils.dart';
import 'package:al_ghaf/src/services/local/navigation_service.dart';
import 'package:al_ghaf/src/shared/app_screen.dart';
import 'package:al_ghaf/src/shared/main_button.dart';
import 'package:al_ghaf/src/shared/spacing.dart';
import 'package:al_ghaf/src/shared/textfield.dart';
import 'package:al_ghaf/src/styles/app_colors.dart';
import 'package:al_ghaf/src/styles/text_theme.dart';
import 'package:al_ghaf/src/views/user/auth/signin/signin_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignInView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignInViewModel>.reactive(
      builder: (context, model, child) {
        return AppScreen(
          padding: EdgeInsets.fromLTRB(20, 97, 20, 20),
          body: SingleChildScrollView(
            child: Form(
              key: model.formKey,
              child: SizedBox(
                height: context.screenSize().height - 117,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Welcome back!",
                          style: TextStyling.h1.copyWith(color: AppColors.primary),
                        ),
                        Text(
                          "Sign in to your account",
                          style: TextStyling.h3.copyWith(color: AppColors.grey),
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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                NavService.forgotPassword();
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyling.h4
                                    .copyWith(color: AppColors.secondary),
                              ),
                            ),
                          ],
                        ),
                        VerticalSpacing(32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sign In With Account",
                              style: TextStyling.h4
                                  .copyWith(color: AppColors.secondary),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(Assets.imagesGoogle)),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(Assets.imagesFacebook)),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(Assets.imagesLinkedIn)),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(Assets.imagesGitHub)),
                          ],
                        ),
                        VerticalSpacing(32),
                        MainButton(
                          title: "Login",
                          isPrimary: true,
                          onTap: () {
                            (model.validator(context) == true)
                            ? NavService.home() : null;
                          },),
                      ],
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 2,
                      child: MainButton(
                          title: "Register",
                          isPrimary: false,
                          onTap: () {
                            NavService.register();
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => SignInViewModel(),
    );
  }
}

import 'package:AlGhaf/src/base/utils/utils.dart';
import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:AlGhaf/src/shared/app_screen.dart';
import 'package:AlGhaf/src/shared/main_button.dart';
import 'package:AlGhaf/src/shared/spacing.dart';
import 'package:AlGhaf/src/shared/textfield.dart';
import 'package:AlGhaf/src/styles/app_colors.dart';
import 'package:AlGhaf/src/styles/text_theme.dart';
import 'package:AlGhaf/src/views/user/auth/register/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
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
                          "Hi, Register yourself",
                          style: TextStyling.h1.copyWith(color: AppColors.primary),
                        ),
                        Text(
                          "Create an account",
                          style: TextStyling.h3.copyWith(color: AppColors.grey),
                        ),
                        VerticalSpacing(50),
                        CustomInput(
                          controller: model.name,
                          onTap: () {},
                          hint: "Enter Full Name",
                          inputType: TextInputType.name,
                          errorMessage: "Please Enter Correct Full Name",
                          onChanged: (val) {
                            model.notifyListeners();
                          },
                        ),
                        VerticalSpacing(32),
                        CustomInput(
                          controller: model.email,
                          onTap: () {},
                          hint: "Enter Email Address",
                          inputType: TextInputType.text,
                          errorMessage: "Please Enter Correct Email Address",
                          onChanged: (val) {
                            model.notifyListeners();
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
                            model.notifyListeners();
                          },
                        ),
                        VerticalSpacing(32),
                        CustomInput(
                          isPassword: true,
                          controller: model.rePassword,
                          onTap: () {},
                          hint: "Enter Confirm Password",
                          errorMessage: "Please Enter Confirm Password",
                          inputType: TextInputType.visiblePassword,
                          onChanged: (val) {
                            model.notifyListeners();
                          },
                        ),
                        VerticalSpacing(32),
                        MainButton(
                          title: "Register",
                          isPrimary: true,
                          onTap: () {
                            (model.validator(context) == true)
                                ? NavService.numberVerify() : null;
                          },
                        ),
                      ],
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 2,
                      child: MainButton(
                          title: "LogIn",
                          isPrimary: false,
                          onTap: () {
                            NavService.signIn();
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => RegisterViewModel(),
    );
  }
}

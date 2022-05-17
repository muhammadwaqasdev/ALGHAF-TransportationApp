import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignInViewModel extends BaseViewModel {
  void get notifier => notifyListeners();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool validator(context) {
    if (formKey.currentState?.validate() ?? false) {
      return true;
    } else {
      return false;
    }
  }

}

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:stacked/stacked.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  TextEditingController email = TextEditingController();

  void get listeners => notifyListeners();


  bool validator(context) {
    if (m.Form.of(context)?.validate() ?? false) {
      return false;
    } else {
      return true;
    }
  }
}

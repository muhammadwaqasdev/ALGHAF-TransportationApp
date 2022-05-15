import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CodeVerifyViewModel extends BaseViewModel {
  void get listeners => notifyListeners();
  String pinCode = "";

  TextEditingController pinputControl = TextEditingController();

  void numChanged(value) {
    if (value != -1) {
      pinCode = pinCode + value.toString();
      pinputControl.text = pinCode.toString();
    } else {
      pinCode = pinCode.substring(0, pinCode.length - 1);
      pinputControl.text = pinCode.toString();
    }
  }

  bool validator() {
    if (pinputControl.text.length < 4) {
      return false;
    } else {
      return true;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as m;
import 'package:stacked/stacked.dart';

class RegisterViewModel extends BaseViewModel {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController password = TextEditingController();

  bool validator(context) {
    if (m.Form.of(context)?.validate() ?? false) {
      return false;
    } else {
      return true;
    }
  }
}

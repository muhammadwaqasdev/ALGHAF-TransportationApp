import 'package:stacked/stacked.dart';

class NumberVerifyViewModel extends BaseViewModel {
  void get listeners => notifyListeners();
  String phoneNumber = "";

  void numChanged(value) {
    if (value != -1) {
      phoneNumber = phoneNumber + value.toString();
    } else {
      phoneNumber = phoneNumber.substring(0, phoneNumber.length - 1);
    }
  }

  bool validator() {
    if (phoneNumber.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}

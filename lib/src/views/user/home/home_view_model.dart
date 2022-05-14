import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  init() async {
    await Future.delayed(Duration(seconds: 3));
  }
}

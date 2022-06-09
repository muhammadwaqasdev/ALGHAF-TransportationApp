import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:stacked/stacked.dart';

class RiderSplashViewModel extends BaseViewModel {
  init() async {
    await Future.delayed(Duration(seconds: 3));
    //NavService.signIn();
  }
}

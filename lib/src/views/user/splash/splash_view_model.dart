import 'package:al_ghaf/src/services/local/navigation_service.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  init() async {
    await Future.delayed(Duration(seconds: 3));
    NavService.signIn();
  }
}

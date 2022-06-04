import 'package:AlGhaf/src/services/local/navigation_service.dart';
import 'package:stacked/stacked.dart';

class ParcelDeliveredViewModel extends ReactiveViewModel {
  init() async {
    await Future.delayed(Duration(seconds: 10));
    NavService.home();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [];
}

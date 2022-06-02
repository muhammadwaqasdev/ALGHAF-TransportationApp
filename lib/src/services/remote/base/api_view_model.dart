import 'package:AlGhaf/src/configs/app_setup.locator.dart';
import 'package:AlGhaf/src/services/remote/api_service.dart';
import 'package:AlGhaf/src/services/remote/network_exceptions.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

mixin ApiViewModel on ReactiveViewModel {
  ApiService _apiService = locator<ApiService>();

  ApiService get apiService => _apiService;

  showError(NetworkExceptions error, {String message = "There was an error!"}) {
    print(error);
    locator<SnackbarService>().showSnackbar(message: message);
  }
}
